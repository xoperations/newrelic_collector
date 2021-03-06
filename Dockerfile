FROM python:3.6-alpine
WORKDIR /usr/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENV configs=test
ENTRYPOINT [ "python", "./app.py" ]
CMD []
