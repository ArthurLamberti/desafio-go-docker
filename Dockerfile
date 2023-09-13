FROM golang:1.21.1-alpine as bd

WORKDIR /app

copy . .

RUN go build -o /main main.go

ENTRYPOINT [ "/main" ]