docker build -t yuji/jupyter .
docker run -d --name debian_jupyter -p 8888:8888 yuji/jupyter
http://localhost:8888/
