# CAREER PATH RECOMMENDATION USING AI AND MACHINE LEARNING

A complete, professional, full-stack college capstone project web application built with **React 19, Vite, Tailwind CSS, Python Flask, and Scikit-Learn**.

---

## 1. PROJECT OBJECTIVE & OVERVIEW

The primary objective of **CareerPath AI** is to assist undergraduate and postgraduate engineering students in navigating the complex IT career landscape. By evaluating multi-dimensional student attributes—including programming languages, core CS foundations, academic and analytical strengths, work style preferences, and technological interests—the platform applies supervised machine learning to predict the three most suitable IT career specializations.

In addition to multi-class probabilistic career recommendations, the system conducts a deterministic **Skill Gap Analysis** against industry requirement benchmarks and provides an interactive **4-Stage Learning Roadmap** with persistent milestone tracking.

---

## 2. KEY FEATURES & CAPABILITIES

1. **Student Academic Profile**
   - Stores full name, email, college name, department, and academic year.
   - 100% persistent via Browser Local Storage (no external cloud databases required).

2. **6-Section Multi-Step Skill Assessment**
   - **Section A: Programming Skills** (C, C++, Java, Python, JavaScript, HTML/CSS rated 1–5).
   - **Section B: Technical Knowledge** (DSA, DBMS, Networks, OS, Software Engineering, Cybersecurity, Cloud, ML, AI rated 1–5).
   - **Section C: Technical Interests** (Interactive selectable cards for 11 domains).
   - **Section D: Academic Strengths** (Math, Logical Reasoning, Analytical Thinking, Problem Solving, Programming Fluency, Communication).
   - **Section E: Work Preferences** (Startup vs Enterprise, Solo vs Team, Frontend vs Backend, Research vs App Building).
   - **Section F: Career Preferences** (Target Domain, 6-Month Goals, Experience Level, Learning Approach).
   - Review and confirmation steps with input validation.

3. **Machine Learning Processing Engine**
   - Real-time client-to-server inference pipeline.
   - Stepwise animated progress indicator: Profile Parsing $\rightarrow$ Feature Vectorization $\rightarrow$ Random Forest Probability Inference $\rightarrow$ Skill Gap Compilation.

4. **Career Recommendation Results Dashboard**
   - Top 1 recommendation highlighted with prediction score and matching competencies.
   - Ranked secondary (#2) and tertiary (#3) career recommendations.
   - Transparent 15-class probability distribution accordion.
   - Comprehensive role details modal (responsibilities, required tools, languages, and suggested portfolio projects).

5. **Skill Gap Analysis**
   - Compares the student's ratings directly against the required threshold values stored in the local career knowledge base.
   - Classifies competencies into **Strong Skills** (Green), **Developing Skills** (Blue), and **Critical Gaps** (Amber).
   - Computes an overall **Role Readiness Index (%)**.

6. **Personalized 4-Stage Learning Roadmap**
   - **Stage 1:** Foundation (Essential concepts and core programming).
   - **Stage 2:** Intermediate (Frameworks, databases, and practical tools).
   - **Stage 3:** Advanced (System design, performance optimization, and microservices).
   - **Stage 4:** Portfolio Development (Resume-ready capstone project and interview prep).
   - Interactive milestone checkboxes saved persistently to Browser Local Storage.

7. **Student Dashboard & Historical Tracking**
   - Overview of total assessments completed, top career match, readiness %, and roadmap progress.
   - Chronological assessment history with side-by-side comparison between past assessments.

8. **Strict Privacy & Offline Architecture**
   - No external APIs, CDNs, or cloud databases (Firebase, Supabase, MySQL, etc.).
   - All computation executes on `localhost` (`http://127.0.0.1:5000` & `http://localhost:5173`).

---

## 3. 15 SUPPORTED IT CAREER CATEGORIES

1. **Software Developer** (Core Software Engineering)
2. **Web Developer** (Web & Cloud Technologies)
3. **Frontend Developer** (Client-Side Engineering)
4. **Backend Developer** (Server-Side Engineering)
5. **Full Stack Developer** (End-to-End Engineering)
6. **Data Analyst** (Data & Analytics)
7. **Data Scientist** (Data & Analytics)
8. **Machine Learning Engineer** (Artificial Intelligence & ML)
9. **AI Engineer** (Artificial Intelligence & ML)
10. **Cybersecurity Analyst** (Security & Systems)
11. **Network Engineer** (Security & Systems)
12. **Cloud Engineer** (Cloud & Infrastructure)
13. **DevOps Engineer** (Cloud & Infrastructure)
14. **UI/UX Designer** (Design & User Experience)
15. **Software Tester / QA Engineer** (Quality Assurance & Testing)

---

## 4. MACHINE LEARNING ARCHITECTURE & RESULTS

### Algorithms Implemented:
- **Decision Tree Classifier** (`criterion='gini'`, `max_depth=12`, `min_samples_split=4`)
- **Random Forest Classifier** (`n_estimators=120`, `max_depth=16`, `min_samples_split=3`)

### Dataset Specifications:
- **Total Records:** 2,250 samples (150 balanced archetype records per career).
- **Feature Vector:** 42 continuous, ordinal, and binary features.
- **Split Ratio:** 80% Training (1,800 samples) / 20% Testing (450 samples), stratified by career.

### Real Evaluation Metrics Comparison:

| Metric | Decision Tree Classifier | Random Forest Classifier (Selected) | Delta / Gain |
| :--- | :---: | :---: | :---: |
| **Test Accuracy** | 91.33% | **95.56%** | +4.23% |
| **Macro Precision** | 91.52% | **95.67%** | +4.15% |
| **Macro Recall** | 91.33% | **95.56%** | +4.23% |
| **Macro F1-Score** | 91.36% | **95.58%** | +4.22% |

*The Random Forest model was selected for production inference due to its superior generalization, lower variance, and 95.56% accuracy.*

---

## 5. PROJECT DIRECTORY STRUCTURE

```
career-path-ai/
│
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Navbar.jsx              # Responsive navigation & ML status badge
│   │   │   ├── Footer.jsx              # Capstone footer & privacy notice
│   │   │   ├── RatingInput.jsx         # 1-to-5 interactive competency scale
│   │   │   ├── CareerDetailModal.jsx   # Role specs, tools, & project details
│   │   │   ├── ModelMetricsModal.jsx   # Genuine Scikit-Learn evaluation metrics
│   │   │   └── ConfirmModal.jsx        # Reusable modal confirmation dialog
│   │   │
│   │   ├── pages/
│   │   │   ├── LandingPage.jsx         # Hero, How it works, 15 careers preview
│   │   │   ├── ProfilePage.jsx         # Student details & college info
│   │   │   ├── AssessmentPage.jsx      # 6-section multi-step questionnaire
│   │   │   ├── ProcessingView.jsx      # Animated ML pipeline loading screen
│   │   │   ├── ResultsPage.jsx         # Top 3 recommendations & 15-class scores
│   │   │   ├── SkillGapPage.jsx        # Strong, developing & missing skills
│   │   │   ├── RoadmapPage.jsx         # 4-stage interactive milestones
│   │   │   ├── DashboardPage.jsx       # Student overview, KPIs & quick actions
│   │   │   ├── HistoryPage.jsx         # Past assessments & comparison tool
│   │   │   ├── CareersExplorerPage.jsx # Searchable catalog of 15 IT careers
│   │   │   └── SettingsPage.jsx        # Local storage inspector & data export
│   │   │
│   │   ├── services/
│   │   │   ├── api.js                  # Communication with Flask ML server
│   │   │   └── storage.js              # Local storage manager
│   │   │
│   │   ├── data/
│   │   │   ├── careerKnowledge.json    # 15 career profiles & required skills
│   │   │   └── modelMetrics.json       # Scikit-Learn evaluation report
│   │   │
│   │   ├── App.jsx                     # Root application coordinator
│   │   ├── main.jsx                    # Vite React entrypoint
│   │   └── index.css                   # Tailwind v4 styles & theme variables
│   │
│   ├── package.json
│   ├── vite.config.js
│   └── index.html
│
├── backend/
│   ├── app.py                          # Flask REST API (localhost:5000)
│   ├── train_model.py                  # Trains & benchmarks DT and RF models
│   ├── predict.py                      # Vector inference & skill gap logic
│   ├── preprocessing.py                # Feature cleaning & vectorization
│   ├── requirements.txt                # Python dependencies
│   │
│   ├── dataset/
│   │   ├── generate_dataset.py         # Curates balanced 2,250 profile dataset
│   │   └── career_dataset.csv          # Local training dataset
│   │
│   ├── models/
│   │   ├── trained_model.joblib        # Serialized Random Forest model
│   │   └── model_metrics.json          # Actual test evaluation metrics
│   │
│   └── data/
│       ├── build_knowledge_base.py     # Generates 15 career knowledge items
│       └── career_knowledge.json       # Benchmark required skills & roadmaps
│
├── run_backend.bat                     # Windows batch launcher for Flask ML
├── run_frontend.bat                    # Windows batch launcher for React Vite
├── run_project.bat                     # 1-Click launcher for full stack
├── README.md                           # Complete documentation & viva guide
└── .gitignore
```

---

## 6. STEP-BY-STEP LOCAL EXECUTION IN VS CODE

### Prerequisites:
- **Node.js** (v18 or higher recommended)
- **Python** (v3.10 or higher)

---

### Step 1: Open Project in VS Code
Open the project root directory in Visual Studio Code:
```bash
code .
```

---

### Step 2: Set Up & Run the Python Backend

Open a terminal in VS Code:
```bash
# 1. Navigate to the backend directory
cd backend

# 2. Create a virtual environment (if not already created)
python -m venv .venv

# 3. Activate the virtual environment
# On Windows (PowerShell):
.\.venv\Scripts\Activate.ps1
# On Windows (Command Prompt):
.\.venv\Scripts\activate.bat

# 4. Install backend dependencies
pip install -r requirements.txt

# 5. Train the Machine Learning models (generates trained_model.joblib)
python train_model.py

# 6. Start the Flask ML API server
python app.py
```
*The backend will be running at `http://127.0.0.1:5000` with status endpoint `/api/health`.*

---

### Step 3: Set Up & Run the React Frontend

Open a **second terminal** in VS Code:
```bash
# 1. Navigate to the frontend directory
cd frontend

# 2. Install dependencies (if not already installed)
npm install

# 3. Start the Vite development server
npm run dev
```

---

### Step 4: Open the Application
Open your browser and navigate to:
```
http://localhost:5173
```
*The React frontend will automatically communicate with the local Flask server on port 5000.*

---

### Optional: 1-Click Windows Launcher
Alternatively, you can double-click **`run_project.bat`** from Windows Explorer, which will launch both servers in separate windows and open your browser automatically.

---

## 7. CAPSTONE VIVA & DEFENSE QUESTIONS

**Q1: Why did you choose Random Forest over Decision Tree?**  
*Answer:* A single Decision Tree tends to suffer from high variance and is prone to overfitting on multidimensional questionnaire data. Random Forest aggregates an ensemble of 120 decorrelated decision trees, using bootstrap aggregating (bagging) and random feature sub-selection. In our actual test split, Random Forest achieved **95.56% test accuracy and a 0.9558 Macro F1-score**, compared to 91.33% and 0.9136 for the standalone Decision Tree.

**Q2: How are the top three recommendations generated?**  
*Answer:* Instead of predicting only a single class label (`model.predict()`), our inference engine calls `model.predict_proba()` on the student's 42-feature vector. This produces class probability outputs across all 15 IT categories. The categories are sorted in descending order of probability, and the top three are extracted.

**Q3: How is the Skill Gap Analysis calculated?**  
*Answer:* The skill gap analysis is deterministic and grounded in the local career knowledge base (`career_knowledge.json`). For the recommended career, each required skill has a target threshold level (1 to 5). The student's assessed rating is compared directly to this threshold:
- $\text{Rating} \ge \text{Target}$: **Strong Skill**
- $\text{Rating} = \text{Target} - 1$: **Developing Skill**
- $\text{Rating} \le \text{Target} - 2$: **Missing / Critical Gap**
The Overall Readiness Index is the weighted sum of acquired competencies divided by total requirements.

**Q4: Where is student data stored?**  
*Answer:* All student data—including profiles, drafts, assessment results, historical comparisons, and roadmap checkboxes—is saved strictly in the user's **Browser Local Storage**. No student information is persisted in a database, ensuring 100% data privacy and zero dependence on external cloud infrastructure.

