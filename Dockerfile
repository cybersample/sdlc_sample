FROM golang:tip-alpine3.21

WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -v -o /usr/bin/app ./...

# the app runs on port 9090
CMD ["app"]