FROM python:3.8-slim-buster
WORKDIR /application
COPY . /application
RUN apt-get update -y && python3 -m pip install awscli
RUN pip install -r requirements.txt
CMD ["python3", "application.py"]