FROM openjdk:8
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH
RUN wget http://apachemirror.wuchna.com/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz && \
    tar -xzf spark-2.4.4-bin-hadoop2.7.tgz && \
    mv spark-2.4.4-bin-hadoop2.7 /opt/spark-2.4.4 && \
    rm spark-2.4.4-bin-hadoop2.7.tgz && \
    ln -s /opt/spark-2.4.4/ /opt/spark

RUN apt-get update && apt install python3-pip -y && pip3 install jupyter && pip3 install findspark
RUN mkdir -p /notebook/workspace
WORKDIR /notebook/workspace
CMD jupyter notebook --ip=0.0.0.0 --allow-root
