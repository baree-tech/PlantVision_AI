
## Suggestions for Detected plant disease


plant_disease_info = {
    'Apple___Apple_scab': {
        "symptoms": "Dark, velvety spots on leaves and fruit.",
        "suggestion": "Remove and destroy infected leaves. Apply organic fungicide like sulfur.",
        "note": "Test any chemical on a small area first. Avoid overhead watering."
    },
    'Apple___Black_rot': {
        "symptoms": "Concentric rings on leaves and fruit with black decay.",
        "suggestion": "Prune infected branches. Use copper-based fungicide.",
        "note": "Clean pruning tools to avoid spreading."
    },
    'Apple___Cedar_apple_rust': {
        "symptoms": "Yellow-orange spots with red halos.",
        "suggestion": "Remove nearby cedar trees. Apply fungicide during early spring.",
        "note": "Early detection gives better control."
    },
    'Apple___healthy': {
        "symptoms": "Leaf appears green and vibrant.",
        "suggestion": "No action needed. Maintain regular care and watering.",
        "note": "Your plant is healthy. Keep up the good work!"
    },
    'Blueberry___healthy': {
        "symptoms": "Bright green leaves with no visible damage.",
        "suggestion": "Maintain soil moisture and proper sunlight.",
        "note": "No issues detected. Regular care is enough."
    },
    'Cherry_(including_sour)___Powdery_mildew': {
        "symptoms": "White powdery substance on leaf surfaces.",
        "suggestion": "Improve air circulation. Use neem oil or sulfur spray.",
        "note": "Avoid overhead watering. Use disease-resistant varieties."
    },
    'Cherry_(including_sour)___healthy': {
        "symptoms": "Lush green leaves with no spots or powder.",
        "suggestion": "Continue regular monitoring and watering.",
        "note": "Healthy condition confirmed."
    },
    'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot': {
        "symptoms": "Long, narrow lesions turning gray or tan.",
        "suggestion": "Rotate crops and use resistant hybrids.",
        "note": "Apply fungicide if symptoms persist."
    },
    'Corn_(maize)___Common_rust_': {
        "symptoms": "Reddish-brown pustules on leaves.",
        "suggestion": "Use resistant varieties. Apply fungicide if needed.",
        "note": "Monitor regularly during humid seasons."
    },
    'Corn_(maize)___Northern_Leaf_Blight': {
        "symptoms": "Large, cigar-shaped tan lesions on leaves.",
        "suggestion": "Plant resistant varieties. Use fungicides early.",
        "note": "Destroy crop debris post-harvest."
    },
    'Corn_(maize)___healthy': {
        "symptoms": "Healthy green leaves, no visible damage.",
        "suggestion": "Ensure proper soil and nutrient balance.",
        "note": "Great condition!"
    },
    'Grape___Black_rot': {
        "symptoms": "Small, round brown spots on leaves and fruit.",
        "suggestion": "Remove infected parts. Use fungicides regularly.",
        "note": "Sanitize tools and avoid excess moisture."
    },
    'Grape___Esca_(Black_Measles)': {
        "symptoms": "Leaves show scorched appearance and streaks.",
        "suggestion": "Prune infected vines. Avoid wounding during pruning.",
        "note": "No complete cure; reduce stress on plant."
    },
    'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)': {
        "symptoms": "Angular brown spots on leaves with yellow edges.",
        "suggestion": "Apply organic copper fungicides.",
        "note": "Remove infected leaves."
    },
    'Grape___healthy': {
        "symptoms": "Leaves green, smooth, and disease-free.",
        "suggestion": "Continue standard care.",
        "note": "Plant health is excellent."
    },
    'Orange___Haunglongbing_(Citrus_greening)': {
        "symptoms": "Yellow shoots, misshapen fruit, blotchy leaves.",
        "suggestion": "Remove infected trees. Control psyllid insects.",
        "note": "No cure available. Confirm with lab if needed."
    },
    'Peach___Bacterial_spot': {
        "symptoms": "Dark, water-soaked spots with yellow halos.",
        "suggestion": "Prune during dry weather. Use copper sprays.",
        "note": "Avoid excess nitrogen fertilizer."
    },
    'Peach___healthy': {
        "symptoms": "No signs of spots or curling on leaves.",
        "suggestion": "Routine watering and care.",
        "note": "Healthy and thriving."
    },
    'Pepper,_bell___Bacterial_spot': {
        "symptoms": "Water-soaked spots that turn brown/black.",
        "suggestion": "Use certified seeds. Apply copper-based fungicides.",
        "note": "Remove infected leaves to slow spread."
    },
    'Pepper,_bell___healthy': {
        "symptoms": "Glossy green leaves with no visible damage.",
        "suggestion": "No special care needed. Keep monitoring.",
        "note": "Healthy plant status."
    },
    'Potato___Early_blight': {
        "symptoms": "Brown concentric rings on older leaves.",
        "suggestion": "Apply fungicide (chlorothalonil). Remove debris.",
        "note": "Rotate crops each season."
    },
    'Potato___Late_blight': {
        "symptoms": "Dark, water-soaked lesions on leaves/stems.",
        "suggestion": "Use resistant varieties. Apply fungicides quickly.",
        "note": "Destroy infected plant material immediately."
    },
    'Potato___healthy': {
        "symptoms": "Strong green leaves with no discoloration.",
        "suggestion": "No treatment required.",
        "note": "Healthy growth noted."
    },
    'Raspberry___healthy': {
        "symptoms": "Bright green leaves with upright stems.",
        "suggestion": "Mulch and water properly.",
        "note": "No issues detected."
    },
    'Soybean___healthy': {
        "symptoms": "No spots or yellowing on leaves.",
        "suggestion": "Check for pests periodically.",
        "note": "Plant looks great!"
    },
    'Squash___Powdery_mildew': {
        "symptoms": "White powder on leaf surfaces.",
        "suggestion": "Use neem oil or sulfur spray.",
        "note": "Ensure good airflow between plants."
    },
    'Strawberry___Leaf_scorch': {
        "symptoms": "Purplish-brown spots and scorched leaves.",
        "suggestion": "Avoid overhead watering. Use fungicide if severe.",
        "note": "Remove damaged leaves to promote recovery."
    },
    'Strawberry___healthy': {
        "symptoms": "Leaves are green and upright.",
        "suggestion": "Continue normal care.",
        "note": "Excellent plant health."
    },
    'Tomato___Bacterial_spot': {
        "symptoms": "Small dark spots on leaves and fruit.",
        "suggestion": "Use certified seeds. Apply copper spray.",
        "note": "Sanitize tools and remove affected parts."
    },
    'Tomato___Early_blight': {
        "symptoms": "Dark leaf spots with concentric rings.",
        "suggestion": "Apply fungicide early. Avoid wet leaves.",
        "note": "Crop rotation helps control this."
    },
    'Tomato___Late_blight': {
        "symptoms": "Large dark blotches on leaves and stems.",
        "suggestion": "Apply fungicides immediately.",
        "note": "Highly contagious—remove infected plants."
    },
    'Tomato___Leaf_Mold': {
        "symptoms": "Yellow patches on upper leaf surface, mold beneath.",
        "suggestion": "Improve ventilation. Apply fungicides.",
        "note": "Keep leaves dry during watering."
    },
    'Tomato___Septoria_leaf_spot': {
        "symptoms": "Small circular spots with gray centers.",
        "suggestion": "Remove infected leaves. Use fungicides regularly.",
        "note": "Avoid working in wet foliage."
    },
    'Tomato___Spider_mites Two-spotted_spider_mite': {
        "symptoms": "Fine webbing and yellow speckled leaves.",
        "suggestion": "Spray with insecticidal soap or neem oil.",
        "note": "Check undersides of leaves."
    },
    'Tomato___Target_Spot': {
        "symptoms": "Brown lesions with concentric rings on leaves.",
        "suggestion": "Apply fungicides and reduce leaf wetness.",
        "note": "Ensure air flow around plants."
    },
    'Tomato___Tomato_Yellow_Leaf_Curl_Virus': {
        "symptoms": "Yellow curled leaves and stunted growth.",
        "suggestion": "Remove infected plants. Use insect screens.",
        "note": "Transmitted by whiteflies—control them."
    },
    'Tomato___Tomato_mosaic_virus': {
        "symptoms": "Mottled or mosaic light and dark green areas on leaves, stunted growth, and reduced yield.",
        "suggestion": "Remove and destroy infected plants. Avoid handling plants after using tobacco products.",
        "note": "⚠️ TMV is highly contagious. Do not use tobacco near plants. Wash hands and tools before and after handling plants."
    },
    'Tomato___healthy': {
        "symptoms": "Bright green leaves with no discoloration or wilting.",
        "suggestion": "Keep it well-watered. Continue routine monitoring.",
        "note": "Excellent condition!"
    }
}

