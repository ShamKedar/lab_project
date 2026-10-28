# 1. Choose a lightweight base image (pulls Python 3.9 slim from Docker Hub)
FROM python:3.9-slim

# 2. Create and set the working folder inside our virtual box named "/app"
WORKDIR /app

# 3. Copy everything from your current computer folder into the container's "/app" folder
COPY . /app

# 4. Install any python requirements listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Tell Docker what command to run automatically when the container starts up
CMD ["python", "hello.py"]