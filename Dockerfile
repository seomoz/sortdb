FROM golang:1.5

RUN mkdir -p /go/src/github.com/jehiah/sortdb
WORKDIR /go/src/github.com/jehiah/sortdb

COPY . /go/src/github.com/jehiah/sortdb
RUN go-wrapper download
RUN go-wrapper install

# App is in /go/bin/sortdb

