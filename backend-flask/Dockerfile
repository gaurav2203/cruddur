FROM python:3.10-slim-buster

WORKDIR /backend-flask

COPY . .

ENV FLASK_ENV=development

RUN pip3 install -r requirements.txt

EXPOSE ${PORT}

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4567"]