ARG VERSION=1.19-rc-alpine
FROM golang:$VERSION

ENV DIRECTORY=/webserver
ENV PORT=2022

RUN mkdir $DIRECTORY
WORKDIR $DIRECTORY

RUN wget https://raw.githubusercontent.com/Deytron/files/main/big-boss/main.go
RUN go mod init webserver
RUN go get -u github.com/gin-gonic/gin@v1.9.1
RUN apk add --no-cache curl

COPY index.html $DIRECTORY

LABEL version='1.0'
LABEL description='A simple test of the Gin go framework'

EXPOSE 2022

HEALTHCHECK --interval=30s --timeout=30s --retries=3 CMD curl -f http://localhost:2022 || exit 1

CMD go run main.go
