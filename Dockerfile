FROM python:3.9-alpine

# Install system dependencies
RUN apk update && apk add --no-cache gcc musl-dev linux-headers

# Install Flask
RUN pip install --no-cache-dir flask

# Add source code
ADD flaskapp.py ./

# Expose port and set default command
EXPOSE 8080
CMD ["python", "flaskapp.py"]
