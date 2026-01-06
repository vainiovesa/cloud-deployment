FROM python

WORKDIR /web-app

COPY . .

RUN pip3 install poetry && poetry install --no-root

CMD ["poetry", "run", "python3", "app.py"]
