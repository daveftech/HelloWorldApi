FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip
COPY . /HelloWorldApi
WORKDIR /HelloWorldApi
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["HelloWorldApi.py"]