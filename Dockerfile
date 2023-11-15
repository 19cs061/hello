FROM python:3.11-alpine
WORKDIR /hello
COPY . /hello
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["uvicorn","message:app","--host","0.0.0.0","--port","8080"]

