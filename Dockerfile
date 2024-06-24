FROM golang:1.22-alpine AS builder

WORKDIR /build

# Copy Go files from <src> to <build> directory in the container
COPY . .

# Run these commands inside a container
RUN go mod download
RUN go build -o ./userapi

FROM gcr.io/distroless/base-debian12

# Copy binary into light-weight base image
WORKDIR /app
COPY --from=builder /build/userapi ./userapi

CMD ["/app/userapi"]