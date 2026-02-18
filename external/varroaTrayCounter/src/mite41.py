# Import keras for deep learning
from __future__ import print_function

import os
import datetime
import numpy as np
from skimage import io
from skimage import color
from skimage.transform import rotate, resize
from sklearn.model_selection import train_test_split, StratifiedKFold

import keras
import tensorflow as tf
from keras.models import Sequential
from keras.layers import Dense, Dropout, Activation, Flatten
from keras.layers import Conv2D, MaxPooling2D
#from keras.optimizers import RMSprop
from keras.callbacks import EarlyStopping

#from keras import backend as K
#from keras.preprocessing.image import ImageDataGenerator

import matplotlib.pyplot as plt
#%matplotlib inline

class miteModelClass:

    def __init__( self ):

        # Image size of gasket to be evaluated
        self._img_rows = 70 # Must be same size as search for center of valve
        self._img_cols = 70
        self._input_shape = (self._img_rows, self._img_cols, 3)

        # Parameters for CNN modified LeNet model
        # Must be set equal to weights loaded from trained network (D)
        self._batch_size = 35 #5
        self._num_classes = 2

        self.filters1 = 10 #7, 10*, 15, 7 _Best, _Good
        self.kernel1_size = 3 #7*, 5
        self.pool1_size = 2 #3*,2
        self.pool1_stride = (2,2) #3*,2

        self.filters2 = 20 #14, 20*, 30, 14
        self.kernel2_size = 3 #5*
        self.pool2_size = 2 
        self.pool2_stride = (2,2)

        # Best 2 layered version
        #self.filters1 = 10 #10* _Best, _Good
        #self.kernel1_size = 7 #7*
        #self.pool1_size = 3 #3*
        #self.pool1_stride = (3,3) #3*

        #self.filters2 = 20 #20*
        #self.kernel2_size = 5 
        #self.pool2_size = 2 
        #self.pool2_stride = (2,2)

        self.kernel_stride = (1,1)
        
        self.filters3 = 40 #28
        self.b2outsz = 5 #9*,7 Size of output from block2_pool of CNN 

        # Size of fully connected classification layers 
        self.fc1_size = 120
        self.fc2_size = 84
        
        self.show_plots = False
        self.show_img_plots = False
        self._CNN_model = []
        self._FCN_model = []
        self.score = []
        
        #used to help some of the timing functions
        self._now = datetime.datetime.now
        
        self.imgColorHSVtrain = []
        self.imgColorHSVtest = []
        self.labelsTrain = []
        self.labelsTest = []
        print("Tensorflow Version:", tf.__version__)
        print("Keras Version:", keras.__version__)
        
    def create_FCN_model(self, CNN_weights, height=640, width=800):
        
        # Create, compile and load trained weights for CNN network
        self.compile_CNN_model()
        self.load_weights(CNN_weights)

        # Define the CNN "feature" layers. 
        CNN_feature_layers = [
            Conv2D(self.filters1, self.kernel1_size,
                padding='same',
                input_shape=(height,width,3), name='block1_conv1'),
            Activation('relu'),
            Conv2D(self.filters1, self.kernel1_size, strides=self.kernel_stride, name='block1_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool1_size, strides=self.pool1_stride, name='block1_pool'),

            Conv2D(self.filters2, self.kernel2_size, strides=self.kernel_stride, name='block2_conv1'),
            Activation('relu'),
            Conv2D(self.filters2, self.kernel2_size, strides=self.kernel_stride, name='block2_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool2_size, strides=self.pool2_stride, name='block2_pool'),

            Conv2D(self.filters3, self.kernel2_size, strides=self.kernel_stride, name='block3_conv1'),
            Activation('relu'),
            Conv2D(self.filters3, self.kernel2_size, strides=self.kernel_stride, name='block3_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool2_size, strides=self.pool2_stride, name='block3_pool'),
        ]
        
        # Define the fully covolutional layers of FCN  
        # Convolutional layers is transfered from fully-connected layers
        CNN_fully_convolutional_layers = [
            Conv2D(self.fc1_size, (self.b2outsz, self.b2outsz), activation='relu', padding='same', name='fc1'),
            Conv2D(self.fc2_size, (1, 1), activation='relu', padding='same', name='fc2'),
            Conv2D(self._num_classes, (1, 1), activation='softmax', name='predictions')
        ]
        
        # We create our model by combining the two sets of layers as follows
        self._FCN_model = Sequential(CNN_feature_layers + CNN_fully_convolutional_layers)
        self._FCN_model.summary()
    
        # Compile model
        # initiate RMSprop optimizer
        #opt = keras.optimizers.rmsprop(lr=0.0005, decay=1e-6)

        #self._FCN_model.compile(loss='categorical_crossentropy',
        #                   optimizer='adagrad',
        #                   optimizer='adadelta',
        #                   optimizer='adam',
        #                    optimizer=opt,
        #                   optimizer=RMSprop(lr=0.001),
        #                    metrics=['accuracy'])  
        
        #transfer weights from CNN to FCN, if CNN successfully created
        if self._CNN_model != []:
            flattened_layers = self._FCN_model.layers
            index = {}
            for layer in flattened_layers:
                if layer.name:
                    index[layer.name]=layer
                    
            for layer in self._CNN_model.layers:
                weights = layer.get_weights()
                if layer.name=='fc1':
                    weights[0] = np.reshape(weights[0], (self.b2outsz,self.b2outsz,self.filters3,self.fc1_size)) #2
                elif layer.name=='fc2':
                    weights[0] = np.reshape(weights[0], (1,1,self.fc1_size,self.fc2_size))
                elif layer.name=='predictions':
                    layer.name='predictions'
                    weights[0] = np.reshape(weights[0], (1,1,self.fc2_size,self._num_classes))
                if layer.name in index:
                    index[layer.name].set_weights(weights)
            #self._FCN_model.save_weights(weights_path)
            print( 'CNN to FCN successfully transformed!')     

    # Create and compile model
    def compile_CNN_model(self):

        # Define the CNN "feature" layers. 
        CNN_feature_layers = [
            Conv2D(self.filters1, self.kernel1_size,
                padding='same',
                input_shape=self._input_shape, name='block1_conv1'),
            Activation('relu'),
            #*
            Conv2D(self.filters1, self.kernel1_size, strides=self.kernel_stride, name='block1_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool1_size, strides=self.pool1_stride, name='block1_pool'),

            Conv2D(self.filters2, self.kernel2_size, strides=self.kernel_stride, name='block2_conv1'),
            Activation('relu'),
            #*
            Conv2D(self.filters2, self.kernel2_size, strides=self.kernel_stride, name='block2_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool2_size, strides=self.pool2_stride, name='block2_pool'),
            
            #CNV3_2, not need - too complex
            #*
            Conv2D(self.filters3, self.kernel2_size, strides=self.kernel_stride, name='block3_conv1'),
            Activation('relu'),
            Conv2D(self.filters3, self.kernel2_size, strides=self.kernel_stride, name='block3_conv2'),
            Activation('relu'),
            MaxPooling2D(pool_size=self.pool2_size, strides=self.pool2_stride, name='block3_pool'),

            Dropout(0.25),
            Flatten(),
        ]

        # Define the LeNet "classification" layers.  
        CNN_classification_layers = [
            Dense(self.fc1_size, name='fc1'),
            Activation('relu'),
            Dropout(0.5),
            Dense(self.fc2_size, name='fc2'),
            Activation('relu'),
            Dropout(0.5),
            Dense(self._num_classes, name='predictions'),
            Activation('softmax')
        ]

        # We create our model by combining the two sets of layers as follows
        self._CNN_model = Sequential(CNN_feature_layers + CNN_classification_layers)

        # Let's take a look
        self._CNN_model.summary()

        # Compile model
        # initiate RMSprop optimizer
        opt = keras.optimizers.rmsprop(lr=0.0005, decay=1e-6)

        self._CNN_model.compile(loss='categorical_crossentropy',
        #                   optimizer='adagrad',
        #                   optimizer='adadelta',
        #                   optimizer='adam',
                            optimizer=opt,
        #                   optimizer=RMSprop(lr=0.001),
                            metrics=['accuracy'])
    
    # Load trained weights from file name into model
    def load_weights(self, filename):
        self._CNN_model.load_weights(filename)
        print('Weights loaded', filename)

    # Save trained weights of model in file name
    def save_weights(self, filename):
        self._CNN_model.save_weights(filename) 
        print('Weights saved', filename)

    # Train the created CNN model 
    # As input, function takes a training set, test set, and the number of classes
    def train_CNN_model(self, train, test, num_epochs):

        x_train = train[0].reshape((train[0].shape[0],) + self._input_shape)
        x_test = test[0].reshape((test[0].shape[0],) + self._input_shape)
        print('x_train shape:', x_train.shape)
        print(x_train.shape[0], 'train samples')
        print(x_test.shape[0], 'test samples')

        # convert class vectors to binary class matrices
        y_train = keras.utils.to_categorical(train[1], self._num_classes)
        y_test = keras.utils.to_categorical(test[1], self._num_classes)
        # early stopping (regularization)
        es = EarlyStopping(monitor='val_loss', min_delta=0, patience=1, verbose=1, mode='auto')

        print(self._batch_size, 'batch size')
        t = self._now()
        history = self._CNN_model.fit(x_train, y_train,
                batch_size=self._batch_size,
                epochs=num_epochs,
                callbacks=[es],
                verbose=1,
                shuffle=True,
                validation_data=(x_test, y_test))
        print('Training time: %s' % (self._now() - t))

        self.score = self._CNN_model.evaluate(x_test, y_test, verbose=0)
        print('Test score:', self.score[0])
        print('Test accuracy:', self.score[1])
        return history

    # Training from Bee project (NOT USED)
    def train_Kfold_model(self, train, test, n_splits):
        
        x_train = train[0].reshape((train[0].shape[0],) + self._input_shape)
        x_test = test[0].reshape((test[0].shape[0],) + self._input_shape)
        print('x_train shape:', x_train.shape)
        print(x_train.shape[0], 'train samples')
        print(x_test.shape[0], 'test samples')

        # convert class vectors to binary class matrices
        y_train = keras.utils.to_categorical(train[1], self._num_classes)
        y_test = keras.utils.to_categorical(test[1], self._num_classes)

        # early stopping (regularization)
        es = EarlyStopping(monitor='val_loss', min_delta=0, patience=1, verbose=0, mode='auto')       
 
        n_samples = y_train.shape[0]
        #n_splits = 5 
        print('Training KFold', n_splits)
 
        t = self._now()
        kfold = StratifiedKFold(n_splits=n_splits, random_state=4)
        counter = 0
        for idx, (train_idx, val_idx) in enumerate(kfold.split(np.zeros(n_samples), y_train[:,0])):
            counter += 1
            print('Iteration: {}/{}'.format(counter, n_splits))
            if counter == n_splits:
                n_epochs = 1 
            else:
                n_epochs = 1 #2
            history = self._CNN_model.fit(x_train[train_idx], y_train[train_idx], 
                                          epochs=n_epochs, 
                                          batch_size=32, 
                                          callbacks=[es], 
                                          verbose=1,
                                          shuffle=True,
                                          validation_data=(x_train[val_idx], y_train[val_idx]))
        print('Training time: %s' % (self._now() - t))
          
        score = self._CNN_model.evaluate(x_test, y_test, verbose=0)
        print('Test score:', score[0])
        print('Test accuracy:', score[1])
        return history
    
    # Plot loss and accuracy as result after training
    def plot_loss_accuracy(self, history):
        fig = plt.figure(figsize=(18, 8))
        ax = fig.add_subplot(1, 2, 1)
        ax.plot(history.history["loss"],'r-x', label="Train Loss")
        ax.plot(history.history["val_loss"],'b-x', label="Validation Loss")
        ax.legend()
        ax.set_title('cross_entropy loss')
        ax.grid(True)


        ax = fig.add_subplot(1, 2, 2)
        ax.plot(history.history["acc"],'r-x', label="Train Accuracy")
        ax.plot(history.history["val_acc"],'b-x', label="Validation Accuracy")
        ax.legend()
        ax.set_title('accuracy')
        ax.grid(True)
    
    # Use simple data argumentation to enhance the training and test set
    # Different cropped areas of valve is selected
    def data_argumentation_simple(self, imgCropColor, img, o):

        img_rows = self._img_rows
        img_cols = self._img_cols

        #imgCropColor.append(img[o-2:img_rows+o-2, o:img_cols+o, :])
        #imgCropColor.append(img[o+2:img_rows+o+2, o:img_cols+o, :])
        
        image = img[o:img_rows+o,     o:img_cols+o,     :]
        imgCropColor.append(image)
        
        #original image rotatet
        #imgCropColor.append(rotate(image,90))
        imgCropColor.append(rotate(image,180))
        #imgCropColor.append(rotate(image,270))
        #flip original image
        imgCropColor.append(np.flipud(image))
        #imgCropColor.append(np.flipud(rotate(image,90)))
        imgCropColor.append(np.fliplr(image))
        #imgCropColor.append(np.fliplr(rotate(image,90))) 
        #imgCropColor.append(img[o:img_rows+o, o-2:img_cols+o-2, :])
        #imgCropColor.append(img[o:img_rows+o, o+2:img_cols+o+2, :])
        
        length = 4 #1
        return (imgCropColor, length)

    # Use advancde data argumentation to enhance the training and test set
    # Different resized, rotated and cropped areas of valve is selected
    def data_argumentation_advanced(self, imgCropColor, img, o, p=3): #p=2

        img_rows = self._img_rows
        img_cols = self._img_cols

        # Create at 10% resized image up and down
        height =  np.round(img.shape[0] * 0.95)
        width = np.round(img.shape[1] * 0.95)
        od = int(np.round((height-img_rows)/2))
        imgResizedDown = resize(img, (height, width), mode='reflect')

        height = np.round(img.shape[0] * 1.1)
        width = np.round(img.shape[1] * 1.1)
        op = int(np.round((height-img_rows)/2))
        imgResizedUp = resize(img, (height, width), mode='reflect')
     
        imgCropColor.append(img[o-p:img_rows+o-p, o:img_cols+o, :])
        imgCropColor.append(imgResizedDown[od:img_rows+od, od:img_cols+od, :])    
        imgCropColor.append(img[o+p:img_rows+o+p, o:img_cols+o, :])

        imgCropColor.append(img[o:img_rows+o, o:img_cols+o, :])

        imgCropColor.append(img[o:img_rows+o, o-p:img_cols+o-p, :])
        imgCropColor.append(imgResizedUp[op:img_rows+op, op:img_cols+op, :])    
        imgCropColor.append(img[o:img_rows+o, o+p:img_cols+o+p, :])

        imgCropColor.append(rotate(img[o:img_rows+o, o:img_cols+o, :], 90))
      
        imgCropColor.append(img[o-p:img_rows+o-p, o-p:img_cols+o-p, :])
        imgCropColor.append(rotate(imgResizedDown[od:img_rows+od, od:img_cols+od, :], 180))    
        imgCropColor.append(img[o-p:img_rows+o-p, o+p:img_cols+o+p, :])

        imgCropColor.append(rotate(img[o:img_rows+o, o:img_cols+o, :], 180))

        imgCropColor.append(img[o+p:img_rows+o+p, o-p:img_cols+o-p, :])
        imgCropColor.append(rotate(imgResizedUp[op:img_rows+op, op:img_cols+op, :], 180))    
        imgCropColor.append(img[o+p:img_rows+o+p, o+p:img_cols+o+p, :])

        imgCropColor.append(rotate(img[o:img_rows+o, o:img_cols+o, :], 270))
        
        #flip original image
        image = img[o:img_rows+o,     o:img_cols+o,     :]
        imgCropColor.append(np.flipud(image))
        imgCropColor.append(np.flipud(rotate(image,90)))
        imgCropColor.append(np.fliplr(image))
        imgCropColor.append(np.fliplr(rotate(image,90)))
        
        length = 20
        return (imgCropColor, length)

    # Create training data based on image file directory: path_train_imgs
    def random_split_train_and_test_data(self,  path_train_mite_imgs, path_train_dust_imgs,  offset=3):
        
        print('Offset:', offset)
        imgColorHSVData = []
        labelsData = []
        imgCropColor = []

        img_train_files = os.listdir(path_train_mite_imgs)
        for imgFile in img_train_files:
            imgPathFile = (path_train_mite_imgs + imgFile)
            img = io.imread(imgPathFile)
            (imgCropColor, length) = self.data_argumentation_advanced(imgCropColor, img, offset)                        
            for j in range(length):
                imgCrop = imgCropColor.pop() 
                imgHSV = color.convert_colorspace(imgCrop, 'RGB', 'HSV')  
                labelsData.append(1)
                imgColorHSVData.append(imgHSV) 

        img_train_files = os.listdir(path_train_dust_imgs)
        for imgFile in img_train_files:
            imgPathFile = (path_train_dust_imgs + imgFile)
            img = io.imread(imgPathFile)
            (imgCropColor, length) = self.data_argumentation_simple(imgCropColor, img, offset)
            for j in range(length):
                imgCrop = imgCropColor.pop() 
                imgHSV = color.convert_colorspace(imgCrop, 'RGB', 'HSV')  
                labelsData.append(0)
                imgColorHSVData.append(imgHSV) 
        
        x_data = np.asarray(imgColorHSVData)
        y_data = np.asarray(labelsData)
        x_train, x_test, y_train, y_test = train_test_split(x_data, y_data, test_size=0.2, random_state=42)

        #print('Files:', img_train_files)
        print('Train size:', x_train.shape)
        print('Train label size:', y_train.shape)
        print('Test size:', x_test.shape)
        print('Test label size:', y_test.shape)
   
        return (x_train, y_train, x_test, y_test)

    # Create training and test data based file path
    def create_data(self, path_train_imgs, offset, mites=True):
  
        imgCropColor = []

        img_train_files = os.listdir(path_train_imgs)   
        i = 0
        for imgFile in img_train_files:
            imgPathFile = (path_train_imgs + imgFile)
            img = io.imread(imgPathFile)
            #print(imgFile)
            if mites == True:
                (imgCropColor, length) = self.data_argumentation_advanced(imgCropColor, img, offset)
            else:
                (imgCropColor, length) = self.data_argumentation_simple(imgCropColor, img, offset)
                
            for j in range(length):
                imgCrop = imgCropColor.pop() 
                if self.show_img_plots == True:
                    fig, ax = plt.subplots(ncols=1, nrows=1, figsize=(8, 8))
                    ax.imshow(imgCrop)
                    plt.show()
                imgHSV = color.convert_colorspace(imgCrop, 'RGB', 'HSV')  
                if i % 5 > 0:
                    if mites == True:
                        self.labelsTrain.append(1)
                    else:
                        self.labelsTrain.append(0)
                    self.imgColorHSVtrain.append(imgHSV) 
                else:
                    if mites == True:
                        self.labelsTest.append(1)
                    else:
                        self.labelsTest.append(0)
                    self.imgColorHSVtest.append(imgHSV) 
                i = i + 1

    # Create training data based on image file directory: path_train_imgs
    def create_train_and_test_data(self, path_train_mite_imgs, path_train_dust_imgs, offset=3):
        
        print('Offset:', offset)

        self.imgColorHSVtrain = []
        self.imgColorHSVtest = []
        self.labelsTrain = []
        self.labelsTest = []

        self.create_data(path_train_dust_imgs, offset, mites=False)
        self.create_data(path_train_mite_imgs, offset, mites=True)
         
        x_train = np.asarray(self.imgColorHSVtrain)
        y_train = np.asarray(self.labelsTrain)
        x_test = np.asarray(self.imgColorHSVtest)
        y_test = np.asarray(self.labelsTest)

        #print('Files:', img_train_files)
        #print('Labels:', labelsTrain)
        print('Train size:', x_train.shape)
        print('Train label size:', y_train.shape)
        print('Test size:', x_test.shape)
        print('Test label size:', y_test.shape)

        self.imgColorHSVtrain = []
        self.imgColorHSVtest = []
        self.labelsTrain = []
        self.labelsTest = []
   
        return (x_train, y_train, x_test, y_test)

    def trainModel(self, pathTrainMiteFiles, pathTrainDustFiles, numEpochs, centerSize=80, random=False):
        offset = int(round((centerSize - self._img_rows)/2))
        if random == False:
            (x_train, y_train, x_test, y_test) = self.create_train_and_test_data(pathTrainMiteFiles, pathTrainDustFiles, offset=3)
        else:
            (x_train, y_train, x_test, y_test) = self.random_split_train_and_test_data(pathTrainMiteFiles, pathTrainDustFiles, offset=3)
        history = self.train_CNN_model((x_train, y_train), (x_test, y_test), numEpochs)
        #history = self.train_Kfold_model((x_train, y_train), (x_test, y_test), n_splits=5)
        self.plot_loss_accuracy(history)

    # Classifiy mite image with dirt or mite
    def predictImage(self, img):

        imageWithMite = 0
        imgHSV = color.convert_colorspace(img, 'RGB', 'HSV')  
        ximg = np.asarray(imgHSV)
        x_predict = ximg.reshape((1,) + self._input_shape)
        x_predict = x_predict.astype('float32')   
        predicted = self._CNN_model.predict(x_predict) #, verbose=1)
        print('Predicted:', predicted)
        if predicted[0][1] > 0.5:
            print("MITE FOUND")
            imageWithMite = 1
        if predicted[0][0] > 0.5:
            print("NONE")
        
        if self.show_plots == True:
            fig, ax = plt.subplots(ncols=1, nrows=1, figsize=(8, 8))
            ax.imshow(img)
            plt.show()

        return imageWithMite
    
    # Segment image based on FCN model 
    def segmentImage(self, imgRaw, threshold, resizeFactor=1):

        if resizeFactor != 1:
            height =  np.round(imgRaw.shape[0] / resizeFactor)
            width = np.round(imgRaw.shape[1] / resizeFactor)
            imgResized = resize(imgRaw, (height, width), mode='reflect')
            print('Image resized to:', imgResized.shape)
        else:
            imgResized = imgRaw
            
        imgHSV = color.convert_colorspace(imgResized, 'RGB', 'HSV')  
        ximg = np.asarray(imgHSV)
        x_predict = ximg.reshape((1,) + ximg.shape)
        x_predict = x_predict.astype('float32')   
        predicted = self._FCN_model.predict(x_predict) #, verbose=1)
        #print('Predicted :', predicted)
        # Create binary image
        binimg = (predicted[0,:,:,1] > predicted[0,:,:,0])*255
        #resimg = np.zeros(binimg.shape)
        #resimg[1:,1:] = binimg[0:-1,0:-1] #Compensate for offset
        #print('Res img:', resimg)
        pixelsInImage = sum(sum(binimg))/255
        #print('Pixels:', mitesInImage)
        # Resize to original image size
        segimg = resize(binimg, [ximg.shape[0], ximg.shape[1]], mode='reflect')
        segimgmax = np.amax(segimg)
        segimg = segimg/segimgmax
        
        if self.show_plots == True and pixelsInImage > threshold:
            fig, ax = plt.subplots(ncols=1, nrows=1, figsize=(8, 8))
            ax.imshow(segimg)
            plt.show()
            
        return pixelsInImage, segimg