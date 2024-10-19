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


#Stage 1: Build Stage
FROM python:3.8-slim as Build

WORKDIR /app

#installing dependencies
RUN apt-get update && apt-get install -y \  
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY . . 

RUN pip install flask mysqlclient


## Stage 2: Production Stage

FROM python:3.8-slim

WORKDIR /app

COPY --from=Build /app /app

EXPOSE 5002

CMD ["python", "app.py"]