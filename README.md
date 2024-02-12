# jupyter-docker
A Jupyter Notebook Server in an Ubuntu Docker container designed to be exposed to the web for collaborative ML training

## 1. Install Docker Desktop
[Download Docker Desktop](https://www.docker.com/products/docker-desktop)

## 2. Build Docker Image
```bash
docker build -t jupyter-ubuntu .
```

## 3. Run Docker Container
```bash
docker run --gpus all -p 80:8888 -v C:/Jupyter:/usr/src/app jupyter-ubuntu
```

## 4. Access Jupyter Notebook
Open a web browser and go to [http://localhost](http://localhost)