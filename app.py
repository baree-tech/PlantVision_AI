# Step 1: Imports
import streamlit as st
import tensorflow as tf
import numpy as np
from tensorflow.keras.preprocessing import image
from PIL import Image
from suggestions import plant_disease_info  # Import suggestion dictionary

# Step 2: Load model (SavedModel format, no need to compile)
try:
    model = tf.keras.models.load_model("Plant_disease_model_saved", compile=False)
except Exception as e:
    st.error("❌ Failed to load model.")
    st.exception(e)
    st.stop()

# Step 3: Class names (38 classes)
class_names = [
    'Apple__Apple_scab', 'Apple_Black_rot', 'Apple_Cedar_apple_rust', 'Apple__healthy',
    'Blueberry__healthy', 'Cherry(including_sour)__Powdery_mildew', 'Cherry(including_sour)___healthy',
    'Corn_(maize)__Cercospora_leaf_spot Gray_leaf_spot', 'Corn(maize)__Common_rust',
    'Corn_(maize)__Northern_Leaf_Blight', 'Corn(maize)__healthy', 'Grape__Black_rot',
    'Grape__Esca(Black_Measles)', 'Grape__Leaf_blight(Isariopsis_Leaf_Spot)', 'Grape___healthy',
    'Orange__Haunglongbing(Citrus_greening)', 'Peach__Bacterial_spot', 'Peach__healthy',
    'Pepper,bell_Bacterial_spot', 'Pepper,_bell_healthy', 'Potato__Early_blight',
    'Potato__Late_blight', 'Potato_healthy', 'Raspberry_healthy', 'Soybean__healthy',
    'Squash__Powdery_mildew', 'Strawberry_Leaf_scorch', 'Strawberry__healthy',
    'Tomato__Bacterial_spot', 'Tomato_Early_blight', 'Tomato_Late_blight', 'Tomato__Leaf_Mold',
    'Tomato__Septoria_leaf_spot', 'Tomato__Spider_mites Two-spotted_spider_mite',
    'Tomato__Target_Spot', 'Tomato__Tomato_Yellow_Leaf_Curl_Virus',
    'Tomato__Tomato_mosaic_virus', 'Tomato__healthy'
]

# App title and credits
st.title("🌿 Plant Disease Detection App")
st.markdown("Created by: Bareera Mushthak")

# Image input section
st.header("📸 Upload or Capture Leaf Image")
input_method = st.radio("Select input method:", ("📁 Upload Image", "📷 Use Camera"))

# Image input handler
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

# Prediction and results
if final_image:
    try:
        # Preprocess
        img = final_image.resize((180, 180))
        img_array = image.img_to_array(img) / 255.0
        img_array = np.expand_dims(img_array, axis=0)

        # Predict
        predictions = model.predict(img_array)
        confidence = float(np.max(predictions))
        predicted_class = class_names[int(np.argmax(predictions))]

        # Results
        if confidence < 0.7:
            st.warning("⚠️ Image unclear or disease unrecognized.")
            st.info("📸 Please upload a clearer image with better lighting.")
        else:
            info = plant_disease_info.get(predicted_class, {})
            st.success(f"✅ Detected Disease: {predicted_class}")
            st.write(f"🩺 Symptoms: {info.get('symptoms', 'Not available')}")
            st.write(f"🌱 Suggestion: {info.get('suggestion', 'No specific advice')}")
            st.write(f"📌 Note: {info.get('note', 'Be cautious with treatments')}")
            st.write(f"🔍 Model Confidence: {confidence:.2f}")

    except Exception as e:
        st.error("❌ Prediction failed.")
        st.exception(e)