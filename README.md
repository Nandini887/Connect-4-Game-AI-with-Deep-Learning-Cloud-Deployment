# Connect-4-Game-AI-with-Deep-Learning-Cloud-Deployment
Built a Connect-4 AI using CNN (ResNet-20) and Transformer models trained on MCTS-generated data (574K samples), deployed via AWS and Docker with real-time gameplay interface.

A full-stack AI project that builds and deploys deep learning models to play Connect-4 at a competitive level using **CNN (ResNet-20)** and **Transformer architectures**, trained on **Monte Carlo Tree Search (MCTS)** generated data.

Link - https://msba25optim2-9.anvil.app/
---

## Project Overview

This project explores how different neural network architectures learn strategy in a grid-based game environment.

- Generated high-quality training data using **MCTS (500 simulations per move)**
- Built and compared **CNN and Transformer models**
- Deployed models on **AWS with Docker**
- Enabled real-time gameplay via Anvil web interface

---

## 🎮 Game Description

Connect-4 is a two-player strategy game played on a **6×7 grid**.

**Objective:**
- Connect four pieces horizontally, vertically, or diagonally before your opponent.

---

## Problem Statement

Given a board state, predict the **optimal next move (column 0–6)**.

We frame this as a **multi-class classification problem** using MCTS-generated labels.

---

## Dataset

- **574,202 unique board states**
- Generated using **MCTS (500 iterations per move)**
- Data preprocessing included:
  - Canonical board representation
  - Deduplication
  - Horizontal flipping (augmentation)
  - Agreement filtering

---

## Model Architectures

### 🔹 CNN (ResNet-20)
- Captures **spatial patterns and local structures**
- Uses skip connections to avoid vanishing gradients
- Achieved **70.07% test accuracy**

---

### 🔹 Transformer
- Uses **self-attention to capture global relationships**
- 4 encoder layers, 4 attention heads
- Achieved **54.34% test accuracy**

---

##  Model Comparison

| Model | Accuracy |
|------|--------|
| Random Baseline | ~14% |
| Transformer | 54.34% |
| CNN (ResNet-20) | **70.07%** |

👉 CNN outperformed Transformer due to strong **spatial inductive bias**

---

## Tech Stack

- **Languages:** Python  
- **Libraries:** TensorFlow, Keras, NumPy, Pandas  
- **ML Techniques:** CNN, Transformer, MCTS  
- **Deployment:** AWS Lightsail, Docker  
- **Frontend:** Anvil  
- **Other:** Model serialization, inference pipelines  

---

## Deployment Architecture

- Models hosted on **AWS Lightsail**
- Backend connected using **Anvil Uplink**
- Dockerized environment for reproducibility
- Real-time inference for gameplay

---

## Challenges & Solutions

### 1. Data Quality Issues
- Fixed inconsistent board representations using canonical transformation

### 2. Transformer Underperformance
- Reduced architecture size to match dataset scale

### 3. Deployment Constraints
- Resolved memory issues by upgrading AWS instance
- Fixed TensorFlow/Keras compatibility issues

---

## Key Learnings

- **Inductive bias matters**: CNNs outperform Transformers for grid-based problems
- **Data quality > data quantity**
- MCTS is a powerful method for generating expert-level training data
- Deployment introduces real-world engineering constraints

---

##  Future Work

- Add value head (win/loss prediction)
- Explore Vision Transformers (ViT)
- Scale dataset to millions of samples
- Build ensemble models

---

