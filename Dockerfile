# TODO: Add base image (e.g., python:3.9-slim)
# TODO: Set working directory
# TODO: Copy code and requirements
# TODO: Install requirements
# TODO: Define CMD to run app.py

# Use lightweight Python base image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Command to run the app
CMD ["python", "app.py"]
