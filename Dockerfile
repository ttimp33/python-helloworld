# set the base image to a Python base image
FROM python:3.11
# set a key-value label for the Docker image
LABEL maintainer="Tyler Timpanaro"
# copy files from the host to the container filesystem
# copy all the files in the current directory to the 
# `/app` directory in the container
COPY . /app
# defines the working directory within the container
WORKDIR /app
# run commands within the container
RUN pip install -r requirements.txt
# provide a command to run on container start
CMD ["python", "app.py"]
