# Use the official Streamlit Docker image as the base image
FROM streamlit/base:latest

# Set the working directory in the container
WORKDIR /app

# Copy the app.py and requirements.txt files into the container's working directory
COPY app.py requirements.txt ./

# Install the required Python libraries listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Streamlit (8501 is the default port for Streamlit)
EXPOSE 8501

# Run the Streamlit app when the container starts
CMD ["streamlit", "run", "app.py"]