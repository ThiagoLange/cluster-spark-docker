# Dockerfile para criar uma imagem do Spark

# Imagem base com o sistema operacional necessário
FROM ubuntu:latest

# Instalação das dependências necessárias
RUN apt-get update && apt-get install -y openjdk-8-jdk wget

# Configuração das variáveis de ambiente do Java
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Download e instalação do Apache Spark
RUN wget https://dlcdn.apache.org/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
RUN tar -xvzf spark-3.3.2-bin-hadoop3.tgz
RUN mv spark-3.3.2-bin-hadoop3 /opt/spark
RUN rm spark-3.3.2-bin-hadoop3.tgz

# Configuração das variáveis de ambiente do Spark
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin

# Exposição da porta para a UI do Spark (opcional)
EXPOSE 8080
