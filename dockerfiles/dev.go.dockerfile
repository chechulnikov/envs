# build environment
FROM golang:1.17.6 AS build-env

ADD . /workdir

WORKDIR /workdir

RUN go build


# Final stage
FROM debian:buster

EXPOSE 8000

WORKDIR /app

COPY --from=build-env /workdir /app

CMD ["/app"]