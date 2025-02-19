# Use the official Alpine-based Python image
FROM python:3.9-alpine

# Set working directory in the container
WORKDIR /app

# Copy the wheel file from the host to the container's working directory
COPY dist/*.whl /app/

# Install the wheel package
RUN pip install --no-cache-dir *.whl

# Set the entry point to the application name
CMD ["python", "test.py"]  
