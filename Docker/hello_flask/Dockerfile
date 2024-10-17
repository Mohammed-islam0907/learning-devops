FROM python:3.8-slim  
WORKDIR /app
RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*


COPY app.py .
RUN pip install flask mysqlclient
EXPOSE 5002
CMD ["python", "app.py"]
