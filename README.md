# ✈️ Airfare Insights: Analyzing Indian Flight Prices & Patterns

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)  
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white)  
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)  
![Statistics](https://img.shields.io/badge/Statistics-008080?style=for-the-badge&logo=gnuplot&logoColor=white)  
![EDA](https://img.shields.io/badge/EDA-FF6F00?style=for-the-badge&logo=apacheairflow&logoColor=white)  

---

## 📊 Project Overview
**Airfare Insights** is a data analytics project aimed at understanding the **factors driving flight fare variations in India**.  
Flight prices are influenced by **airline, stops, duration, departure time, and routes**. By analyzing these attributes, this project helps uncover pricing patterns and provides actionable insights for **customers** and **airlines**.

The project uses the **Indian Airlines Ticket Price Dataset** for:  
- **Data Cleaning & Preprocessing**  
- **Exploratory Data Analysis (EDA)**  
- **Statistical Analysis**  
- **SQL-based insights**  

---

## 📁 Dataset
**Title:** Indian Airlines Ticket Price Dataset  
**Source / Download Link:** [Kaggle – Indian Airlines Ticket Price Analysis](https://www.kaggle.com/datasets/dhirajbembade/indian-airlines-ticket-price-analysis)  

**Dataset Description:**  
- Key attributes: **Airline, Source, Destination, Date of Journey, Departure & Arrival Times, Duration, Total Stops, Additional Info, Price**.  
- The **target variable** is **Price** (continuous numerical).  

---

## 📂 Directory Structure
Airfare-Insights/  
├─ data/             # Raw & processed datasets  
├─ notebooks/        # Jupyter notebooks for EDA & analysis  
├─ scripts/          # Python scripts for preprocessing & analysis  
└─ README.md  

---

## 🎯 Project Objectives / Questions Explored
- 🔹 What factors (stops, airlines, duration, routes) affect **flight prices**?  
- 🔹 How does **time of departure** impact ticket costs?  
- 🔹 Does **duration** strongly correlate with price?  
- 🔹 Compare average fares between **non-stop and multi-stop flights**.  
- 🔹 Which **routes** and **airlines** show higher/lower pricing trends?  

---

## 🛠️ Methodology

### 1️⃣ Data Cleaning & Preprocessing
- Extracted **day and month** from journey dates.  
- Converted **duration** and time features into numeric formats.  
- Handled **missing values and duplicates**.  
- Normalized categorical values (Airline, Stops, Routes).  

### 2️⃣ Exploratory Data Analysis (EDA)
- Visualized **price distribution** overall and segmented by features.  
- Compared **airline-wise pricing**.  
- Analyzed **stops vs. fare variation**.  
- Studied **duration vs. price correlation**.  
- Examined **departure/arrival time effects** on pricing.  
- Techniques: **Histograms, Box plots, Violin plots, KDE, Bar charts**.  

### 3️⃣ Statistical Analysis
- **T-Test:** Non-stop vs. 1-stop flight fares.  
- **ANOVA:** Fare variation across multiple airlines.  
- **Correlation:** Duration vs. Price.  
- **Chi-square Test:** Stops vs. Price categories.  

### 4️⃣ SQL Analysis
- Aggregate **average fare by airline and route**.  
- Identify **most expensive vs. cheapest airlines**.  
- Highlight **routes with abnormal fare trends**.  

### 5️⃣ Visualization / Dashboard
- 📊 Charts & Graphs:  
  - Price by Airline  
  - Stops vs. Fare  
  - Route comparisons  
- 📈 Tools: **Matplotlib, Seaborn, Plotly** (Power BI optional).  

---

## 💡 Key Insights
Here are the **Top 6 Insights** derived from the analysis:  

1. 💰 **Price Distribution:** Flight prices are **right-skewed**, with most fares clustered between **₹4000 – ₹8000**.  
2. ✈️ **Stops Impact Price:** Flights with **2 or more stops** have the **highest fares** (around ₹8000 on average).  
3. 🏷️ **Airline Pricing:** **Vistara and Air India** consistently fall in the **higher price range** compared to other airlines.  
4. 🪑 **Class Difference:** **Business class tickets** are on average **8x more expensive** than economy class.  
5. 📍 **Route Pricing:** The **average fare per route** is about **₹6000**, but **premium routes** show much higher outliers.  
6. 🕒 **Time-of-Day Effect:** **Late-night flights** tend to have **lower median prices**, while **afternoon slots** are more expensive.  

---

## 💻 Tech Stack
- **Programming Languages:** Python, SQL  
- **Libraries / Tools:** Pandas, NumPy, Matplotlib, Seaborn, Jupyter Notebook  
- **Techniques:** Data Cleaning, EDA, Statistical Analysis, SQL Queries, Visualization  

---

## 👥 Team Members & Roles
- 👨‍💻 **Suraj** – Data Cleaning & Preprocessing  
- 👨‍💻 **Afifa** – Exploratory Data Analysis (EDA)  
- 👨‍💻 **Shubham** – SQL
- 🌏 **Location:** India  

---

<p align="center">
  🙏 <b>Thank You for Visiting My Profile!</b> 🙏
</p>

<p align="center">
  💡 I love building projects, exploring data, and learning new technologies!  
</p>

<p align="center">
  🔗 Let's Connect:  
  <a href="https://www.linkedin.com/in/suraj-mate12/">
    <img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"/>
  </a>
  <a href="https://github.com/Surajmate21">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>

<p align="center">
  🚀 <b>Keep Learning. Keep Growing. Keep Exploring!</b> 🚀
</p>

