FROM python:3.8-slim  
WORKDIR /app
COPY app.py .
RUN pip install flask mysqlclient
EXPOSE 5002
CMD ["python", "app.py"]
