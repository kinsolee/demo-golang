FROM registry.alauda.cn:60080/devops/golang:1.18-ubuntu21.04

ENV GO111MODULE=on \
  GOPROXY=https://goproxy.cn,direct \
  GIN_MODE=release \
  PORT=80

WORKDIR /app

COPY . .

RUN go build -o app .

EXPOSE 80

ENTRYPOINT ["./app"]
