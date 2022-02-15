FROM golang:1.17.7-alpine3.15

WORKDIR /app
ADD hello.go /app
RUN go build hello.go

FROM alpine:3.15
COPY --from=0 "/app/hello" hello
ENTRYPOINT ./hello