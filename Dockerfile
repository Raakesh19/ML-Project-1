FROM python:3.7
COPY . /app
WORKDIR /app
RUN command pip install -r requirements.txt
CMD gunicorn --workers=1 --bind 0.0.0.0:$PORT app:app