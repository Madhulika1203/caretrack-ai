# 📋 Project Requirements Analysis

## 1. System Prerequisites
To successfully run and develop the **CareTrackAI** application, the following system components are required:

*   **Operating System**: Windows, macOS, or Linux.
*   **Python**: Version 3.8 or higher.
*   **Web Browser**: Modern browser (Chrome, Edge, Firefox, Safari) with JavaScript enabled.
*   **Internet Connection**: Required for Firebase connectivity and Gemini AI API calls.

## 2. External Services & API Keys
The application relies on the following third-party services. You must have valid credentials for these:

### 🤖 Google Gemini AI
*   **Purpose**: Powers the AI Health Assistant (Chatbot), Health Analysis, and Medical Document Analysis.
*   **Requirement**: A valid **Google Gemini API Key**.
*   **Configuration**: Must be set in the `.env` file as `GEMINI_API_KEY`.

### 🔥 Firebase (Firestore)
*   **Purpose**: Real-time database for storing user profiles, health metrics, diagnoses, and analysis history.
*   **Requirement**: A Firebase project with **Firestore Database** enabled.
*   **Credentials**: A `serviceAccountKey.json` file placed in the `backend/` directory.
*   **Frontend Config**: Firebase configuration object in `frontend/sdk.js`.

## 3. Backend Dependencies (Python)
The backend is built with **FastAPI**. All dependencies are listed in `requirements.txt`. Key libraries include:

*   **`fastapi`**: Web framework for building the API.
*   **`uvicorn`**: ASGI server to run the application.
*   **`firebase-admin`**: SDK for interacting with Firebase services.
*   **`google-generativeai`**: SDK for accessing Gemini models.
*   **`python-multipart`**: Required for handling file uploads (image analysis).
*   **`python-dotenv`**: For loading environment variables.

**Installation Command:**
```bash
pip install -r backend/requirements.txt
```

## 4. Frontend Requirements
The frontend is a lightweight, vanilla JavaScript application.

*   **Technologies**: HTML5, CSS3, Vanilla JavaScript (ES6+).
*   **No Build Step**: The project runs directly in the browser (served via `http.server` or similar).
*   **Design System**: Custom CSS variables and responsive design (no external CSS frameworks like Bootstrap/Tailwind required).

## 5. Hardware Requirements
*   **Camera/Webcam** (Optional): For capturing medical documents directly (if feature enabled).
*   **Display**: Minimum resolution of 1366x768 recommended for the dashboard.
