import os
import firebase_admin
from firebase_admin import credentials, firestore

BASE_DIR = os.path.abspath("backend")
ADMIN_SDK_PATH = os.path.join(BASE_DIR, "admindsk.json")

print(f"Checking {ADMIN_SDK_PATH}...")
if os.path.exists(ADMIN_SDK_PATH):
    print("File exists.")
    try:
        cred = credentials.Certificate(ADMIN_SDK_PATH)
        firebase_admin.initialize_app(cred)
        print("Firebase initialized.")
        
        db = firestore.client()
        print("Firestore client created.")
        
        print(f"Server Timestamp: {firestore.SERVER_TIMESTAMP}")
        
    except Exception as e:
        print(f"ERROR: {e}")
        import traceback
        traceback.print_exc()
else:
    print("File NOT found.")
