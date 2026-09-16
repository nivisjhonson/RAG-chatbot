╔════════════════════════════════════════════════════════════╗
║                                                            ║
║     RAG PDF CHATBOT - QUICK START GUIDE                   ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝

THE PROBLEM:
------------
The links don't work because the servers aren't running yet!
You need to START the servers first.

THE SOLUTION:
-------------
Follow these 3 simple steps:

╔════════════════════════════════════════════════════════════╗
║  STEP 1: Find the START.bat file                          ║
╚════════════════════════════════════════════════════════════╝

Location: c:\Users\Dell\Desktop\RAG\START.bat

╔════════════════════════════════════════════════════════════╗
║  STEP 2: Double-click START.bat                            ║
╚════════════════════════════════════════════════════════════╝

This will open 2 black windows:
  → Backend Server (keep open!)
  → Frontend Server (keep open!)

╔════════════════════════════════════════════════════════════╗
║  STEP 3: Wait for browser to open                          ║
╚════════════════════════════════════════════════════════════╝

After 10-15 seconds, your browser will automatically open to:
  → http://localhost:3000

If it doesn't open automatically, manually type in browser:
  → http://localhost:3000

╔════════════════════════════════════════════════════════════╗
║  WHAT YOU'LL SEE:                                          ║
╚════════════════════════════════════════════════════════════╝

Backend Window:
  ✓ Loading embedding model...
  ✓ Connecting to Pinecone...
  ✓ Application startup complete
  ✓ Uvicorn running on http://127.0.0.1:8000

Frontend Window:
  ✓ Compiled successfully!
  ✓ webpack compiled
  ✓ On Your Network: http://localhost:3000

Browser:
  ✓ RAG PDF Chatbot homepage loads
  ✓ You see "Try as Guest" button

╔════════════════════════════════════════════════════════════╗
║  THEN USE THE APP:                                         ║
╚════════════════════════════════════════════════════════════╝

1. Click "Try as Guest"
2. Click "Choose File" and select a PDF
3. Click "Upload"
4. Wait for "PDF uploaded successfully!"
5. Type a question or click microphone 🎤
6. Click "Send"
7. Get your answer!

╔════════════════════════════════════════════════════════════╗
║  IMPORTANT NOTES:                                          ║
╚════════════════════════════════════════════════════════════╝

✓ Keep BOTH black windows open while using the app
✓ Don't close the terminal windows
✓ If you close them, the app stops working
✓ To stop the app: Press Ctrl+C in both windows

╔════════════════════════════════════════════════════════════╗
║  STILL NOT WORKING?                                        ║
╚════════════════════════════════════════════════════════════╝

Check if you see error messages in the black windows.
Common issues:
  → Port already in use: Close other apps
  → npm not found: Reinstall Node.js
  → Python error: Check Python installation

╔════════════════════════════════════════════════════════════╗
║  FILES TO USE:                                             ║
╚════════════════════════════════════════════════════════════╝

Main Startup: START.bat (← USE THIS ONE!)
Alternative:  RUN.bat
Manual Guide: HOW_TO_START.txt

╔════════════════════════════════════════════════════════════╗
║  READY? DOUBLE-CLICK: START.bat                            ║
╚════════════════════════════════════════════════════════════╝
