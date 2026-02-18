# Build stage for Go
FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o nrelab-api ./cmd/server

# Final stage
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/nrelab-api ./nrelab-api
EXPOSE 8080
CMD ["./nrelab-api"]
