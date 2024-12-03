FROM golang:1.22

WORKDIR /usr/src/app

COPY . ./

RUN go get
RUN go test
RUN go build -o main .

CMD ["./main"]
