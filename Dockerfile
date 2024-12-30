# Base image
FROM python:3.10.12

# Set the working directory
WORKDIR /app

# Copy requirements.txt to the container
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install -r requirements.txt

# Copy all the application files
COPY . .

# Expose the port on which the app runs
EXPOSE 8501

# Command to run the app
CMD ["streamlit", "run", "app.py"]