FROM golang:1.19 as build
WORKDIR /go/delivery
COPY . .
RUN go env GOOS=linux
RUN go env GOARCH=amd64
RUN go env GOOS
RUN go env GOARCH
# RUN apt-get -y update
# RUN apt-get -y install make
RUN make vendor-check