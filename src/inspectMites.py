import os

from skimage import io
import matplotlib.pyplot as plt
from skimage.measure import label, regionprops
import matplotlib.patches as mpatches

# Class used to inspect images of varroamites on white background with dirt
class miteInspectionClass:
    
    def __init__(self, pathName, mite=[]):
        self.weightsFilename = 'MiteModelWeights1.h5'
        self.path_imgs = pathName
        self.mite = mite
        self.numMites = 0
        self.numImages = 0
        self.numActualMites = 0
        self.numFalseMites = 0
        self._offset = 40
        self.aSizeMin = 60 # Minimum area size of mite blob
        self.aSizeMax = 1400 # Maximum area size of mite blob
        self.solidityMin = 0.69 #0.75 # Minimum solidity for mite blob
        self.extentMin = 0.49 #0.50 # Minimum extent for mite blob 
        self.eccentricityMax = 0.95 # Maximum eccentricity of mite blob
        self.features = []

    def inspectSingleImage(self, image):
        imageWithMite = self.mite.predictImage(image)
        return imageWithMite

    # Inspect images using trained CNN mite model
    def inspectImages(self):

        path_imgs = self.path_imgs
        img_files = os.listdir(path_imgs)
        
        imgColor = []
        for imgFile in img_files:
            imgPathFile = (path_imgs + imgFile)
            imgRaw = io.imread(imgPathFile)
            imgColor.append(imgRaw)

        print("===================================================================================================")
        self.numActualMites = 0
        self.numMites = 0
        self.numImages = len(img_files)
 
        for i in range(self.numImages):
            fileName = img_files[i];
            print("-------------------------------------------------------", i+1, "----------------------------------------------------------")
            print("File:", fileName)
            imgFull = imgColor[i]
            imgSmall = imgFull[5:-5, 5:-5, :]
            withMite = self.inspectSingleImage(imgSmall)
            self.numMites += withMite
            if fileName[0] == 'M':
                self.numActualMites = self.numActualMites + 1
            else:
                if withMite == 1:
                    self.numFalseMites = self.numFalseMites + 1
   
        self.printResult()  

    # Printing results of precision, recall and F1-score based on analysis in inspectImages
    def printResult(self):
        print("----------------------------------------")
        print("Analysed image files in:", self.path_imgs)
        print(self.numImages, 'images in total')
        print(self.numActualMites, 'images with mites')
        print(self.numMites, 'mites detected')
        print(self.numFalseMites, 'mites false detected')
        numNotDetected = self.numActualMites-(self.numMites-self.numFalseMites)
        print(numNotDetected, 'mites not detected')
        numTruePositive = self.numMites-self.numFalseMites
        precision = numTruePositive/self.numMites
        print('Precision:', precision)
        recall = 0
        if numTruePositive+numNotDetected > 0:
            recall = numTruePositive/(numTruePositive+numNotDetected)
            print('Recall:', recall)
        if recall+precision > 0:
            f1Score = 2*(precision*recall)/(precision+recall)
            print('F1-Score:', f1Score)       
            
    # Inspect and segment images - FCN transformed version of CNN mite model
    def segmentImages(self, threshold=10, printRes=True, label=True, save=True):
        
        img_files = os.listdir(self.path_imgs)
        self.numActualMites = 0
        self.numMites = 0
        self.numImages = len(img_files)
        pixelsDirt = []
        pixelsMite = []
        i = 1
        for imgFile in img_files:
            imgPathFile = (self.path_imgs + imgFile)
            print(imgPathFile)
            imgRaw = io.imread(imgPathFile)
            [pixelsInImage, segimg] = self.mite.segmentImage(imgRaw, threshold)
            filename = 'SegImg' + str(i) + '.png'
            print("Segmented img:", filename)
            i = i + 1

            if save == True:            
                io.imsave(filename, segimg)
            #print('Pixels:', pixelsInImage)
            if label == True:
                self.labelImage(imgRaw, segimg)
            
            withMite = 0
            if pixelsInImage > threshold: # Threshold to descide on mite image, use histogram
                withMite = 1
            
            self.numMites += withMite
            if imgFile[0] == 'M':
                pixelsMite.append(pixelsInImage)
                self.numActualMites = self.numActualMites + 1
            else:
                pixelsDirt.append(pixelsInImage)
                if withMite == 1:
                    self.numFalseMites = self.numFalseMites + 1
        
        if printRes == True:
            self.printResult()  
            
            fig, ax = plt.subplots(ncols=1, nrows=2, figsize=(8, 8))
            # Histogram of the pixel data
            n, bins, patches = ax[0].hist(pixelsMite, 50, density=True, facecolor='r', alpha=0.75)
            n, bins, patches = ax[1].hist(pixelsDirt, 50, density=True, facecolor='g', alpha=0.75)
            plt.title('Histogram of Pixels for Mite (red) and Dirt (green)')
            plt.ylabel('Observations')
            plt.xlabel('Pixels')
            plt.grid(True)
            plt.show()
     
    # Label segmented images and filter best mite blobs
    def labelImage(self, img, segimg):
               
        # label image regions
        label_image = label(segimg)
        #image_label_overlay = label2rgb(label_image, image=image)
        
        fig, ax = plt.subplots(figsize=(26, 26))
        ax.imshow(img)

        found = 0
        region = []
        for r in regionprops(label_image):
            #print('Area', r.area)
            #print('Solidity', r.solidity)
            #print('Extent', r.extent)
            #print('Eccentricity', r.eccentricity)
            row, col = r.centroid                
            self.features.append([r.area, r.eccentricity, r.solidity, r.extent, col, row])

            # take regions with features within limits
            if r.area > self.aSizeMin and r.area < self.aSizeMax and \
               r.solidity > self.solidityMin and \
               r.eccentricity < self.eccentricityMax and \
               r.extent > self.extentMin:
                # draw circle around segmented mites
                circle = mpatches.Circle((col,row),radius=50, fill=False, edgecolor='cyan',linewidth=1.3)
                ax.add_patch(circle)
                found = found + 1;
                region.append(r)
                
        plt.show()
        print('Number of mites', found)
        
        return (found, region)  

    # Print features for blob center of valve region found in all images
    def printFeatures(self):
        fig, ax = plt.subplots(ncols=1, nrows=4, figsize=(20, 20))

        area = [row[0] for row in self.features]
        eccentricity = [row[1] for row in self.features]
        solidity = [row[2] for row in self.features]
        extent = [row[3] for row in self.features]
        x = [row[4] for row in self.features]
        y = [row[5] for row in self.features]

        ax[0].plot(area, eccentricity, '+r', markersize=10)
        ax[0].set_xlabel('Area')
        ax[0].set_ylabel('Eccentricity')
        ax[1].plot(area, solidity, '+g', markersize=10)
        ax[1].set_xlabel('Area')
        ax[1].set_ylabel('Solidity')
        ax[2].plot(area, extent, '+b', markersize=10)
        ax[2].set_xlabel('Area')
        ax[2].set_ylabel('Extent')
        ax[3].plot(y, x, '+k', markersize=10)
        ax[3].set_ylabel('x (row)')
        ax[3].set_xlabel('y (column)')
        plt.show()

        print('Area min', self.aSizeMin, min(area))
        print('Area max', self.aSizeMax, max(area))
        print('Solidity min', self.solidityMin, min(solidity))
        print('Extent min', self.extentMin, min(extent))
        print('Eccentricity max', self.eccentricityMax, max(eccentricity))      
        
    # Create additional training images for the background by dividing a hole image into squared sizes
    def createTrainBackgroundImages(self, train_path,  prefix='Dirt', filetype='.png', squaredSize=80):   
      
        # Load train images taken with camera
        train_files = os.listdir(self.path_imgs)
        i = 1
        for imgFile in train_files:
            imgPathFile = (self.path_imgs + imgFile)
            imgRaw = io.imread(imgPathFile)
            height = imgRaw.shape[0];
            width = imgRaw.shape[1];

            for r in range(0, height-squaredSize, squaredSize): # Rows
                for c in range(0, width-squaredSize, squaredSize): # Columns
                    imgBackground = imgRaw[r:r+squaredSize, c:c+squaredSize, :]              
                    filename = (train_path + prefix + str(i) + filetype)
                    print("Train img:", filename)
                    io.imsave(filename, imgBackground)
                    i = i + 1

            


 

