FROM python:3.8-alpine
COPY src/ /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app.py"]
