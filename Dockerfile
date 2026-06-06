# 1. Use an official Python runtime as a base image
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the requirements file first and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of your application code (like app.py)
COPY . .

# 5. Expose port 3000 for the Flask web application
EXPOSE 3000

# 6. Run the application when the container starts
CMD ["python", "app.py"]
