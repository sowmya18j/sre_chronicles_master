FROM python:3.9

RUN apt-get update

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

HEALTHCHECK --interval=5m --timeout=30s --retries=3  CMD curl --fail http://0.0.0.0:8000 || exit 1

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
