# Use the official Python image from Docker Hub
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Clone the transformers repository from GitHub
RUN git clone https://github.com/huggingface/transformers.git

# Change the working directory to the transformers repository
WORKDIR /app/transformers

# Install the required dependencies using pip
RUN pip install -r ./src/transformers/requirements.txt

# Install the transformers package in editable mode
RUN pip install -e .

# Set the working directory back to /app
WORKDIR /app

