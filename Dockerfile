FROM python:3.12-slim

WORKDIR /app
COPY . .

# Render provides PORT at runtime; serve files from repository root.
CMD ["sh", "-c", "python -m http.server ${PORT:-10000} --bind 0.0.0.0"]