FROM ubuntu:20.04
LABEL maintainer="khangb2306668@student.ctu.edu.vn"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
