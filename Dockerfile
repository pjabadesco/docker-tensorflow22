FROM nvcr.io/nvidia/tensorflow:22.07-tf2-py3 as base

RUN apt-get update -y && apt-get install -y screen cron

# RUN pip3 install --upgrade pip
RUN pip3 install git+https://github.com/tensorflow/docs 
RUN pip3 install seaborn pymysql google-cloud-pubsub flask_restful
RUN pip3 install --upgrade protobuf==3.20.1

RUN curl -L "http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz" -o /tmp/ta-lib-0.4.0-src.tar.gz && \
    tar -zxvf /tmp/ta-lib-0.4.0-src.tar.gz -C /tmp && \
    cd /tmp/ta-lib && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    pip3 install TA-Lib


