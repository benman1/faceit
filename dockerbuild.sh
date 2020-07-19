#nvidia-docker build -t faceswap .
nvidia-docker build --build-arg http_proxy=http://172.17.0.1:3128 --build-arg https_proxy=https://172.17.0.1:3128 -t faceswap .