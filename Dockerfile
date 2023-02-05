# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the current directory to the working directory
COPY . /app

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Specify the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]