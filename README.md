# CareTrackAI - Health Monitoring System

## 🚀 Quick Start (Windows)
If you already have the environment set up, simply double-click the **`start.bat`** file in the project folder. 
This will automatically:
1.  Start the Backend Server (FastAPI)
2.  Start the Frontend Server
3.  Open the Dashboard in your browser

---

## 🛠️ Manual Setup & Installation
Follow these steps if you are setting up the project for the first time or moving to a new machine.

### 1. Prerequisites
*   **Python 3.8+** installed and added to PATH.
*   **Git** (optional, for cloning).

### 2. Set Up Virtual Environment (Recommended)
It is best practice to run this project in a virtual environment to isolate dependencies.

**Open a terminal (Command Prompt or PowerShell) in the project folder:**

```powershell
# 1. Create the virtual environment
python -m venv .venv

# 2. Activate the virtual environment
# Windows (PowerShell):
.\.venv\Scripts\Activate.ps1
# Windows (Command Prompt):
.\.venv\Scripts\activate.bat
# macOS/Linux:
source .venv/bin/activate
```

### 3. Install Dependencies
With the virtual environment activated, install the required Python packages:

```bash
pip install -r backend/requirements.txt
```

### 4. Configuration
1.  **Firebase**: Ensure you have `serviceAccountKey.json` in the `backend/` folder.
2.  **Gemini AI**: 
    *   Create a `.env` file in the `backend/` folder (or set environment variables).
    *   Add your API key: `GEMINI_API_KEY=your_api_key_here`

### 5. Running the Application Manually
If you prefer not to use `start.bat`, you can run the servers manually in two separate terminals.

**Terminal 1: Backend**
```bash
# Activate venv first!
cd backend
uvicorn app:app --reload --port 8000
```

**Terminal 2: Frontend**
```bash
# Run from the project root
python -m http.server 3000
```

Then open your browser to: `http://localhost:3000/frontend/index.html`

## 🤝 Troubleshooting
*   **"Address already in use"**: Close any existing terminal windows running the servers.
*   **"Module not found"**: Make sure you activated the virtual environment (`.venv`) before running commands.
