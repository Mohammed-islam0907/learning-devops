FROM python:3.8-slim
WORKDIR /app
COPY . .
RUN pip install flask redis 
EXPOSE 5001
CMD ["python", "app.py"]
