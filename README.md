# 🎮 EEG-Based Gamer Expertise Classification using Deep Learning

This project focuses on classifying video gaming expertise (Expert vs Novice) using EEG (Electroencephalogram) signals recorded while subjects perform two types of tasks: a shooting game and a puzzle-solving game.

EEG signals are converted into 2D scalogram images and used to train a deep learning model (CNN + LSTM with ResNet backbone) for classification.

---

## 🧠 Project Overview

- 🎯 **Goal:** Classify players as either `Expert` or `Novice` based on their brain activity during gaming.
- 🧪 **Input:** Raw EEG signals from 14 channels (AF3, F7, F3, FC5, etc.)
- 🖼️ **Preprocessing:** Convert 1D EEG signals into 2D scalogram images using Continuous Wavelet Transform (CWT).
- 🧠 **Model:** ResNet50 + BiLSTM architecture with softmax output.
- 🎯 **Output:** Predicted label: `Expert (1)` or `Novice (0)`

---

## 📂 Folder Structure

EEG-Gamer-Classification/
│
├── scalogram_generator/ # MATLAB / Python code to convert EEG to images
├── data/
│ ├── Expert/ # Scalogram images for expert players
│ └── Novice/ # Scalogram images for novice players
├── notebooks/ # Jupyter notebooks for training/testing
├── models/ # Saved model weights
├── results/ # Accuracy/loss plots, confusion matrix, reports
│
├── README.md # Project description (this file)
├── requirements.txt # Dependencies
└── train_classifier.py # Final Python script for training the model


---

## 🛠️ How It Works

1. **EEG Data Collection**  
   EEG signals collected during gameplay using 14-channel headset.

2. **Feature Conversion (Scalogram Images)**  
   - Apply Continuous Wavelet Transform (CWT)
   - Convert 1D EEG signals to 2D time-frequency representations.

3. **Model Training**  
   - ResNet50 for feature extraction
   - BiLSTM to capture temporal dependencies
   - Softmax for final classification

4. **Evaluation Metrics**  
   - Accuracy, Precision, Recall, F1-score  
   - Confusion Matrix

---

## 📊 Example Outputs

- Accuracy/Loss Plots per Epoch  
- Confusion Matrix  
- Classification Report

---

## 🚀 How to Run

**1. Clone this repo:**
   ```bash
   git clone https://github.com/Kavinesan2004/EEG-Gamer-Classification.git
   cd EEG-Gamer-Classification
   ```
**2. Install dependencies:**
   ```
   pip install -r requirements.txt
   ```
**3. Run Training:**
   ```
   python train_classifier.py
   ```
# 👨‍💻 Author
## Kavinesan
Electronics and Communication Engineer

