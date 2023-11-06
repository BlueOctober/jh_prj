WORKDIR /app

COPY . .

RUN yum update 

EXPOSE 80