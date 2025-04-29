FROM python:3.12
WORKDIR /app
RUN python -m venv env
RUN .  env/bin/activate
COPY . .

RUN pip install -r requirements.txt

CMD ["python","-m","flask","run","--host=0.0.0.0"]

EXPOSE 5000
