# 🌿 PlantVision AI

*PlantVision AI* is an intelligent plant disease detection system powered by deep learning.  
It allows users to upload or capture images of plant leaves and get instant disease predictions, symptoms, and treatment suggestions — all from a web-based interface.

---

## 🚀 Features

- 📸 Upload or capture leaf images using webcam
- 🧠 CNN model trained on 38 disease classes from the PlantVillage dataset
- 💡 Returns predicted disease, symptoms, suggestions, and confidence score
- ⚠️ Warns when image is unclear or prediction confidence is low
- ✅ User-trustworthy and ethically designed (no harmful instructions)

---

## 🧠 Model Information

- *Framework:* TensorFlow / Keras  
- *Architecture:* Custom CNN  
- *Accuracy:* 87.12%  
- *Validation Accuracy:* 87.51%  
- *Model Format:* .h5 (tracked via Git LFS)  
- *Classes:* 38 disease categories including healthy

---

## 📂 How to Use the App

Once deployed on Streamlit:

1. Visit the app link (coming soon after deployment)
2. Upload a plant leaf image OR use the webcam
3. View results including:
   - 🌱 Disease name
   - 🩺 Symptoms
   - 🌿 Treatment suggestions
   - 🔍 Confidence score

---

## 🧰 Tech Stack

- Python 3.10
- Streamlit
- TensorFlow / Keras
- OpenCV
- NumPy
- Pillow (PIL)

---

## 📄 Requirements

To install required packages:

bash:

pip install -r requirements.txt


⸻

🔄 CI/CD Deployment

This app is deployed using Streamlit Cloud, and supports:
	•	Automatic redeployment on every commit to GitHub
	•	No need for manual redeploying

You can update any part of the app (plantapp.py, model, suggestions, etc.), push the changes, and the live app will be updated.

⸻

👩‍💻 Developed By

Bareera Mushthak
AI & ML Engineer | Computer Vision Specialist
📍 Abu Dhabi, UAE
🔗 GitHub :[baree-tech](https://github.com/baree-tech)

⸻

🌱 Project Vision

This app is part of a larger mission to build ethical and accessible AI tools for agriculture, especially plant health monitoring. Future goals include edge device integration, multilingual support, and mobile-friendly design.

⸻

📌 License

Open-source under CC BY 4.0 License

