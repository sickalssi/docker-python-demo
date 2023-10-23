# Using latest base lsimage from dockerhub
FROM python:latest

# creating working dir inside container
WORKDIR /app

# Copy source code into working dir inside container
COPY . /app

# Install flask inside container
RUN pip install -r requirements.txt

# Expose container port (same as in 'app.py')
EXPOSE 8080

# Start flask app
ENTRYPOINT ["python"]
CMD ["app.py"]