FROM python:3.9

COPY u2net.onnx /home/.u2net/u2net.onnx 

# Working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Expose the server port
EXPOSE 8080

CMD ["python", "app.py"]