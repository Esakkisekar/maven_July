FROM ubuntu:20.04
WORKDIR /app
COPY . /app
RUN apt-get update & apt-get install -y \
    python3 \
    python3-pip
RUN pip3 install --no-cache-dir- -r requirements.txt
EXPOSE 8080
CMD ["python3", "app.py"]
