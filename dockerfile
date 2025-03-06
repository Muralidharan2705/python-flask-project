FROM python:3.12

WORKDIR /app


COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 9001

CMD ["python3", "main.py"]
