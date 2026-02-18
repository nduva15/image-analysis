# Experimnents counting varroa on bee tray using CNN and FCN
# Kim Bjerge, 14-11-2018

#from mite import miteModelClass

# 3 layered models usin 2xCONV in each layer
# Test accuracy: 0.9874573794156821
# F1-Score: 0.9350649350649352
from mite41 import miteModelClass #threshold = 2, absolutely best

# 3 layered models usin 2xCONV in each layer with deep layers 20, 40, 80
#from mite51 import miteModelClass #threshold = 2, absolutely best

from inspectMites import miteInspectionClass
           
if __name__=='__main__':

    menu = 11

    miteModel = '../models/MiteModelWeights41.h5' #0.987457, threshold = 2
    #miteModel = 'MiteModelWeights45.h5' #0.985387, threshold = 5
    #miteModel = 'MiteModelWeights47.h5' #0.987457, threshold = 4

    #miteModel = 'MiteModelWeights51.h5' #0.988796, threshold = 4
    #miteModel = 'MiteModelWeights54.h5' #0.989771, threshold = 4
    #miteModel = 'MiteModelWeights57.h5' #0.985509, threshold = 5

    if menu == 1: # Training model
        mite = miteModelClass()
        mite.compile_CNN_model()
        mite.trainModel('../imgs/Mites/', 'imgs/DustMore3/', 8, centerSize=80, random=False) #6 number of epochs
        mite.save_weights('../models/MiteModelWeights56.h5')
#        mite = miteModelClass()
#        mite.compile_CNN_model()
#        mite.trainModel('BilledeFiler/ImagesAll/Mites/', 'BilledeFiler/ImagesAll/DustMore3/', 8, centerSize=80, random=False) #6 number of epochs
#        mite.save_weights('MiteModelWeights57.h5')
        
       
    elif menu == 2: # Creating more background images
        inspect = miteInspectionClass('../imgs/Full5/')
        inspect.createTrainBackgroundImages('../imgs/DustEvenMore3/', prefix='DirtC', filetype='.png', centerSize=80);

    ###################################################################################
    # Best reference for test
   
    elif menu == 3: # Best CNN segmentation 10 F1-Score: 0.794912559618442
        mite = miteModelClass()
        mite.compile_CNN_model()
        mite.load_weights(miteModel)
        inspect = miteInspectionClass('../imgs/secondIt/', mite)
        inspect.inspectImages()

    elif menu == 4: # Best FCN segmentation 14 F1-Score: 0.7804878048780487
        mite = miteModelClass()
        mite.create_FCN_model(miteModel, 80, 80) # Image height and width
        mite.show_plots = True
        inspect = miteInspectionClass('../imgs/secondIt/', mite)
        inspect.segmentImages(threshold=2, label=False, save=False) #Thredshold 5.h5,15 - 4.h5,12 (Best) - 2.h5,20

    ###################################################################################
    # FCN Segmentation and labling

    elif menu == 11: # FCN segmentation on Full1
        mite = miteModelClass()
        mite.create_FCN_model(miteModel, 4608, 3456) # Image height and width
        mite.show_plots = True
        inspect = miteInspectionClass('../imgs/Full1/', mite)
        inspect.segmentImages(printRes=False) #Thredshold 5.h5,15 - 4.h5,12 (Best) - 2.h5,20
        inspect.printFeatures()

    elif menu == 12: # FCN segmentation on Full2
        mite = miteModelClass()
        mite.create_FCN_model(miteModel, 3840, 5120) # Image height and width
        mite.show_plots = True
        inspect = miteInspectionClass('../imgs/Full2/', mite)
        inspect.segmentImages(printRes=False) #Thredshold 5.h5,15 - 4.h5,12 (Best) - 2.h5,20
        inspect.printFeatures()

    elif menu == 13: # FCN segmentation on Full3
        mite = miteModelClass()
        mite.create_FCN_model(miteModel, 3456, 4608) # Image height and width
        mite.show_plots = True
        inspect = miteInspectionClass('../imgs/Full3/', mite)
        inspect.segmentImages(printRes=False) #Thredshold 5.h5,15 - 4.h5,12 (Best) - 2.h5,20
        inspect.printFeatures()

     ###################################################################################
     # CNN validation of reference test precistion, recall and F1-Score
       
    else: # Inspection of images using CNN model, reference test like menu=3
        mite = miteModelClass()
        mite.compile_CNN_model()
        mite.load_weights(miteModel)
        inspect = miteInspectionClass('../imgs/secondIt/', mite)
        inspect.inspectImages()

            


 

