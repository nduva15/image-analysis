# # from flask import Flask, render_template, request
# # import os
# # import cv2
# # import numpy as np
# # from werkzeug.utils import secure_filename

# # app = Flask(__name__)

# # # Configure upload folder and allowed extensions
# # UPLOAD_FOLDER = 'static/uploads/'
# # ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
# # app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# # # Function to check if file extension is allowed
# # def allowed_file(filename):
# #     return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

# # # Function to process the image and detect varroa mites
# # def detect_varroa_mites(image_path):
# #     # Read the input image
# #     image = cv2.imread(image_path)

# #     # Convert the image to HSV (Hue, Saturation, Value) to focus on dark areas
# #     hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

# #     # Define lower and upper range for dark colors (black to dark brown)
# #     lower_black = np.array([0, 0, 0])
# #     upper_black = np.array([180, 255, 50])

# #     # Create a mask that highlights only the dark areas (mites)
# #     dark_mask = cv2.inRange(hsv_image, lower_black, upper_black)

# #     # Perform morphological operations to clean up small noise
# #     kernel = np.ones((3, 3), np.uint8)
# #     morph_image = cv2.morphologyEx(dark_mask, cv2.MORPH_CLOSE, kernel, iterations=2)

# #     # Find contours on the dark regions
# #     contours_dark, _ = cv2.findContours(morph_image, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

# #     # Count the number of varroa mites
# #     num_mites_dark = len(contours_dark)

# #     # Save the result image with contours drawn
# #     result_image_path = os.path.join(UPLOAD_FOLDER, "varroa_mites_detected.png")
# #     contour_image_dark = image.copy()
# #     cv2.drawContours(contour_image_dark, contours_dark, -1, (0, 255, 0), 2)
# #     cv2.imwrite(result_image_path, contour_image_dark)

# #     return num_mites_dark, result_image_path

# # @app.route('/')
# # def index():
# #     return render_template('index.html')

# # @app.route('/predict', methods=['POST'])
# # def predict():
# #     if 'file' not in request.files:
# #         return render_template('index.html', prediction="No file part")
# #     file = request.files['file']
# #     if file.filename == '':
# #         return render_template('index.html', prediction="No selected file")
# #     if file and allowed_file(file.filename):
# #         filename = secure_filename(file.filename)
# #         file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
# #         file.save(file_path)

# #         # Call the detection function
# #         num_mites, result_image_path = detect_varroa_mites(file_path)

# #         # Render the result page with the prediction
# #         return render_template('index.html', prediction=f"Detected Varroa Mites: {num_mites}", filename="varroa_mites_detected.png")

# # if __name__ == "__main__":
# #     if not os.path.exists(UPLOAD_FOLDER):
# #         os.makedirs(UPLOAD_FOLDER)
# #     app.run(debug=True)


# from flask import Flask, render_template, request
# import os
# import cv2
# import numpy as np
# from werkzeug.utils import secure_filename

# app = Flask(__name__)

# # Configure upload folder and allowed extensions
# UPLOAD_FOLDER = 'static/uploads/'
# ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
# app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# # Function to check if file extension is allowed
# def allowed_file(filename):
#     return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

# # Function to detect black-colored Varroa mites
# def detect_black_varroa_mites(image):
#     # Convert the image to HSV (Hue, Saturation, Value)
#     hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

#     # Define the HSV range for black color
#     lower_black = np.array([0, 0, 0])
#     upper_black = np.array([180, 255, 50])

#     # Create a mask to detect dark (black) regions
#     black_mask = cv2.inRange(hsv_image, lower_black, upper_black)

#     # Perform morphological operations to remove noise
#     kernel = np.ones((3, 3), np.uint8)
#     cleaned_mask = cv2.morphologyEx(black_mask, cv2.MORPH_CLOSE, kernel, iterations=2)

#     # Find contours on the black regions
#     contours, _ = cv2.findContours(cleaned_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    
#     return contours

# # # Function to detect mites based on color and size
# # def detect_varroa_mites(image_path):
# #     # Read the input image
# #     image = cv2.imread(image_path)

# #     # Detect black-colored Varroa mites
# #     black_contours = detect_black_varroa_mites(image)
# #     num_black_mites = len(black_contours)

# #     # If needed, you can add more color-based detection logic for brown mites or others
# #     # Here, I'm giving you an example for brown mites
# #     hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

# #     # Define the HSV range for brown color (adjust values based on testing)
# #     lower_brown = np.array([10, 50, 50])
# #     upper_brown = np.array([20, 255, 200])

# #     # Create a mask for brown mites
# #     brown_mask = cv2.inRange(hsv_image, lower_brown, upper_brown)

# #     # Perform morphological operations to clean up the noise
# #     kernel = np.ones((3, 3), np.uint8)
# #     cleaned_brown_mask = cv2.morphologyEx(brown_mask, cv2.MORPH_CLOSE, kernel, iterations=2)

# #     # Find contours on brown mites
# #     brown_contours, _ = cv2.findContours(cleaned_brown_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
# #     num_brown_mites = len(brown_contours)

# #     # Count total mites (both black and brown)
# #     total_mites = num_black_mites + num_brown_mites

# #     # Draw the contours on the original image for visualization
# #     result_image = image.copy()
# #     cv2.drawContours(result_image, black_contours, -1, (0, 255, 0), 2)  # Green for black mites
# #     cv2.drawContours(result_image, brown_contours, -1, (0, 0, 255), 2)  # Red for brown mites

# #     # Save the result image
# #     result_image_path = os.path.join(UPLOAD_FOLDER, "varroa_mites_detected.png")
# #     cv2.imwrite(result_image_path, result_image)

# #     return total_mites, result_image_path

# def detect_varroa_mites(image_path):
#     # Read the input image
#     image = cv2.imread(image_path)

#     # Convert the image to HSV (Hue, Saturation, Value) to focus on dark areas
#     hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

#     # Define lower and upper range for dark colors (black to dark brown)
#     lower_black = np.array([0, 0, 0])
#     upper_black = np.array([180, 255, 50])

#     # Create a mask that highlights only the dark areas (mites)
#     dark_mask = cv2.inRange(hsv_image, lower_black, upper_black)

#     # Perform morphological operations to clean up small noise
#     kernel = np.ones((3, 3), np.uint8)
#     morph_image = cv2.morphologyEx(dark_mask, cv2.MORPH_CLOSE, kernel, iterations=2)

#     # Find contours on the dark regions
#     contours_dark, _ = cv2.findContours(morph_image, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

#     # Count the number of varroa mites
#     num_mites_dark = len(contours_dark)

#     # Save the result image with contours drawn
#     result_image_path = os.path.join(UPLOAD_FOLDER, "varroa_mites_detected.png")
#     contour_image_dark = image.copy()
#     cv2.drawContours(contour_image_dark, contours_dark, -1, (0, 255, 0), 2)
#     cv2.imwrite(result_image_path, contour_image_dark)

#     # Print for debugging instead of showing image
#     print("Dark Mask Shape:", dark_mask.shape)
#     print("Number of Dark Contours:", num_mites_dark)

#     return num_mites_dark, result_image_path

# @app.route('/')
# def index():
#     return render_template('index.html')

# @app.route('/predict', methods=['POST'])
# def predict():
#     if 'file' not in request.files:
#         return render_template('index.html', prediction="No file part")
#     file = request.files['file']
#     if file.filename == '':
#         return render_template('index.html', prediction="No selected file")
#     if file and allowed_file(file.filename):
#         filename = secure_filename(file.filename)
#         file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
#         file.save(file_path)

#         # Call the detection function
#         num_mites, result_image_path = detect_varroa_mites(file_path)

#         # Render the result page with the prediction
#         return render_template('index.html', prediction=f"Detected Varroa Mites: {num_mites}", filename="varroa_mites_detected.png")

# if __name__ == "__main__":
#     if not os.path.exists(UPLOAD_FOLDER):
#         os.makedirs(UPLOAD_FOLDER)
#     app.run(debug=True)

from flask import Flask, render_template, request
import os
import cv2
import numpy as np
from werkzeug.utils import secure_filename

app = Flask(__name__)

# Configure upload folder and allowed extensions
UPLOAD_FOLDER = 'static/uploads/'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# Function to check if file extension is allowed
def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

# Function to detect brown-colored Varroa mites
def detect_varroa_mites(image_path):
    # Read the input image
    image = cv2.imread(image_path)

    # Convert the image to HSV (Hue, Saturation, Value) to focus on brown areas
    hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

    # Define lower and upper range for brown colors
    lower_brown = np.array([5, 50, 50])  # Adjust these values as needed
    upper_brown = np.array([20, 255, 255])

    # Create a mask that highlights only the brown areas (mites)
    brown_mask = cv2.inRange(hsv_image, lower_brown, upper_brown)

    # Perform morphological operations to clean up small noise
    kernel = np.ones((3, 3), np.uint8)
    morph_image = cv2.morphologyEx(brown_mask, cv2.MORPH_CLOSE, kernel, iterations=2)

    # Find contours on the brown regions
    contours_brown, _ = cv2.findContours(morph_image, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    # Count the number of varroa mites
    num_mites_brown = len(contours_brown)

    # Save the result image with contours drawn
    result_image_path = os.path.join(UPLOAD_FOLDER, "varroa_mites_detected.png")
    contour_image_brown = image.copy()
    cv2.drawContours(contour_image_brown, contours_brown, -1, (0, 255, 0), 2)
    cv2.imwrite(result_image_path, contour_image_brown)

    # Print for debugging instead of showing image
    print("Brown Mask Shape:", brown_mask.shape)
    print("Number of Brown Contours:", num_mites_brown)

    return num_mites_brown, result_image_path

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    if 'file' not in request.files:
        return render_template('index.html', prediction="No file part")
    file = request.files['file']
    if file.filename == '':
        return render_template('index.html', prediction="No selected file")
    if file and allowed_file(file.filename):
        filename = secure_filename(file.filename)
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)

        # Call the detection function
        num_mites, result_image_path = detect_varroa_mites(file_path)

        # Render the result page with the prediction
        return render_template('index.html', prediction=f"Detected Varroa Mites: {num_mites}", filename="varroa_mites_detected.png")

if __name__ == "__main__":
    if not os.path.exists(UPLOAD_FOLDER):
        os.makedirs(UPLOAD_FOLDER)
    app.run(debug=True)

