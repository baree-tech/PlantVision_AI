### Streamlit application

# Step 1: Imports
import streamlit as st
import tensorflow as tf
import numpy as np
from tensorflow.keras.preprocessing import image
from PIL import Image
from suggestions import plant_disease_info  # Import suggestion dictionary
import cv2 # for camera input

# Step 2: Load model

model = tf.keras.models.load_model("Plant_disease_model_saved",compile=False)


# Step 3: Load class names (same order as model training)
class_names = [
    'Apple___Apple_scab', 'Apple___Black_rot', 'Apple___Cedar_apple_rust', 'Apple___healthy', 'Blueberry___healthy', 'Cherry_(including_sour)___Powdery_mildew', 'Cherry_(including_sour)___healthy', 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot', 'Corn_(maize)___Common_rust_', 'Corn_(maize)___Northern_Leaf_Blight', 'Corn_(maize)___healthy', 'Grape___Black_rot', 'Grape___Esca_(Black_Measles)', 'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)', 'Grape___healthy', 'Orange___Haunglongbing_(Citrus_greening)', 'Peach___Bacterial_spot', 'Peach___healthy', 'Pepper,_bell___Bacterial_spot', 'Pepper,_bell___healthy', 'Potato___Early_blight', 'Potato___Late_blight', 'Potato___healthy', 'Raspberry___healthy', 'Soybean___healthy', 'Squash___Powdery_mildew', 'Strawberry___Leaf_scorch', 'Strawberry___healthy', 'Tomato___Bacterial_spot', 'Tomato___Early_blight', 'Tomato___Late_blight', 'Tomato___Leaf_Mold', 'Tomato___Septoria_leaf_spot', 'Tomato___Spider_mites Two-spotted_spider_mite', 'Tomato___Target_Spot', 'Tomato___Tomato_Yellow_Leaf_Curl_Virus', 'Tomato___Tomato_mosaic_virus', 'Tomato___healthy']
# App title
st.title("🌿 Plant Disease Detection App")
st.markdown("*Created by: Bareera Mushthak*")

# Input method selection
st.header("📸 Upload or Capture Leaf Image")
input_method = st.radio("Select input method:", ("📁 Upload Image", "📷 Use Camera"))

# Image input
final_image = None

if input_method == "📁 Upload Image":
    uploaded_file = st.file_uploader("Upload a leaf image", type=["jpg", "jpeg", "png"])
    if uploaded_file is not None:
        final_image = Image.open(uploaded_file).convert("RGB")
        st.image(final_image, caption="📤 Uploaded Image", use_column_width=True)

elif input_method == "📷 Use Camera":
    camera_image = st.camera_input("Take a photo using your webcam")
    if camera_image is not None:
        final_image = Image.open(camera_image).convert("RGB")
        st.image(final_image, caption="📷 Captured Image", use_column_width=True)

# Prediction logic
if final_image:
    # Preprocess
    img = final_image.resize((180, 180))
    img_array = image.img_to_array(img) / 255.0
    img_array = np.expand_dims(img_array, axis=0)

    # Predict
    predictions = model.predict(img_array)
    confidence = np.max(predictions)
    predicted_class = class_names[np.argmax(predictions)]

    # Results
    if confidence < 0.7:
        st.warning("⚠️ Image unclear or disease unrecognized.")
        st.info("📸 Please upload a clearer image with better lighting.")
        st.caption("🔍 The system couldn’t confidently detect the issue.")
    else:
        info = plant_disease_info.get(predicted_class, {})
        st.success(f"✅ Detected Disease: *{predicted_class}*")
        st.write(f"🩺 *Symptoms:* {info.get('symptoms', 'Not available')}")
        st.write(f"🌱 *Suggestion:* {info.get('suggestion', 'No specific advice')}")
        st.write(f"📌 *Note:* {info.get('note', 'Be cautious with treatments')}")
        st.write(f"🔍 *Model Confidence:* {confidence:.2f}")
