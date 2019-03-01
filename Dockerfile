FROM golang:latest

COPY . /go/src/envrun

WORKDIR /go/src/envrun
RUN go build . && mv envrun /go/bin
WORKDIR /envrun

ENTRYPOINT /go/bin/envrun
