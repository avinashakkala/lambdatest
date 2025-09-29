# Use the AWS Lambda Python base image
FROM python:3.12-slim

# Copy requirements and install dependencies
COPY requirements.txt ${LAMBDA_TASK_ROOT}
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code into the container
COPY main.py ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (file.function)

CMD ["main.handler"]
