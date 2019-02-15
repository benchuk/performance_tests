#FROM gcc
#RUN mkdir -p /usr/src/loop_test1
#COPY . /usr/src/loop_test1
#WORKDIR /usr/src/loop_test1
#RUN gcc -o -fno-unroll-loops loop.c -o loop
#CMD ["./loop"]

FROM golang:latest
RUN mkdir /app
COPY . /app/
WORKDIR /app
CMD ["go run loop.go"]
