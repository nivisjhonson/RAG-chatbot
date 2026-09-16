# RAG PDF Chatbot Web Application

A full-stack AI-powered chatbot that allows users to upload PDF documents and ask questions using Retrieval-Augmented Generation (RAG).

## Features

- 🔐 User authentication (register/login)
- 👤 Guest mode for quick access
- 📄 PDF document upload and processing
- 🤖 AI-powered question answering using RAG
- 💬 Chat history management
- 🎨 Modern React UI with Bootstrap

## Tech Stack

**Frontend:**
- React 18
- React Router
- Axios
- Bootstrap 5

**Backend:**
- FastAPI
- SQLAlchemy
- Pinecone (Vector Database)
- Sentence Transformers
- LangChain
- JWT Authentication

## Prerequisites

- Python 3.9+
- Node.js 16+
- Pinecone account (free tier available)
- OpenAI API key (optional, for better answers)

## Installation

### 1. Backend Setup

```bash
cd backend

# Create virtual environment
python -m venv venv
venv\Scripts\activate  # Windows
# source venv/bin/activate  # Mac/Linux

# Install dependencies
pip install -r requirements.txt

# Create .env file
copy .env.example .env

# Edit .env and add your API keys:
# - PINECONE_API_KEY
# - OPENAI_API_KEY (optional)
# - SECRET_KEY (generate a random string)

# Run the server
uvicorn app:app --reload
```

Backend runs at: http://127.0.0.1:8000

### 2. Frontend Setup

```bash
cd frontend

# Install dependencies
npm install

# Start the app
npm start
```

Frontend runs at: http://localhost:3000

## Environment Variables

Create `backend/.env` file:

```env
PINECONE_API_KEY=your_pinecone_api_key
PINECONE_ENVIRONMENT=us-east-1
PINECONE_INDEX_NAME=pdf-chatbot
OPENAI_API_KEY=your_openai_key_optional
DATABASE_URL=sqlite:///./chatbot.db
SECRET_KEY=your_secret_jwt_key
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
```

## Usage

1. **Register/Login** or use **Guest Mode**
2. **Upload a PDF** document
3. **Ask questions** about the document
4. View **chat history** (registered users only)

## API Endpoints

- `POST /register` - Register new user
- `POST /login` - Login user
- `POST /guest-session` - Create guest session
- `POST /upload-pdf` - Upload PDF document
- `POST /ask` - Ask question
- `GET /chat-history` - Get user's chat history
- `GET /chat/{chat_id}` - Get specific chat
- `DELETE /chat/{chat_id}` - Delete chat

## Project Structure

```
rag-pdf-chatbot/
├── backend/
│   ├── app.py              # Main FastAPI application
│   ├── auth.py             # Authentication logic
│   ├── database.py         # Database models
│   ├── ingest.py           # PDF processing
│   ├── rag_pipeline.py     # RAG implementation
│   └── requirements.txt    # Python dependencies
├── frontend/
│   ├── public/
│   ├── src/
│   │   ├── components/     # React components
│   │   ├── pages/          # Page components
│   │   ├── api.js          # Axios configuration
│   │   ├── App.js          # Main app component
│   │   └── index.js        # Entry point
│   └── package.json
└── README.md
```

## How It Works

1. **PDF Upload**: User uploads PDF → Text extraction → Chunking
2. **Embedding**: Text chunks → Sentence Transformers → Vector embeddings
3. **Storage**: Embeddings stored in Pinecone vector database
4. **Query**: User question → Embedding → Vector similarity search
5. **Generation**: Retrieved context + Question → LLM → Answer

## Deployment

**Frontend:**
- Netlify: `npm run build` → Deploy `build/` folder
- Vercel: Connect GitHub repo

**Backend:**
- Render: Connect GitHub repo, set environment variables
- Railway: Deploy with Dockerfile

## Troubleshooting

**Backend won't start:**
- Check Python version (3.9+)
- Verify all environment variables are set
- Ensure Pinecone API key is valid

**Frontend won't connect:**
- Verify backend is running on port 8000
- Check CORS settings in app.py
- Ensure API URL in api.js is correct

**PDF upload fails:**
- Check file is valid PDF
- Verify Pinecone index exists
- Check backend logs for errors

## Future Enhancements

- Streaming responses
- Multi-document search
- Conversation memory
- File management UI
- Docker deployment
- Advanced RAG techniques

## License

MIT

## Contributing

Pull requests welcome!
