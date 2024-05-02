# use a base image
FROM openjdk:8-jre

# install unzip package
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

# set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# set the working directory
WORKDIR /game

# copy install script to container
COPY .install.sh .

# expose port
EXPOSE 25565

# start server
CMD ["sh", ".install.sh"]
