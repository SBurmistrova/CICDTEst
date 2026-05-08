FROM golang:1.24 AS builder 
WORKDIR /app
ENV CGO_ENABLED=0

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o main ./cmd/app

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .

CMD ["./main"]