FROM python:3.12-slim 

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 9001

CMD ["python3", "main.py"]
