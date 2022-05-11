FROM golang:1.18

ENV GO111MODULE=on \
  GOPROXY=https://goproxy.cn,direct \
  GIN_MODE=release \
  PORT=80

WORKDIR /app

COPY . .

RUN go build -o app .

EXPOSE 80

ENTRYPOINT ["./app"]