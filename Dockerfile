# Build stage
FROM golang as BUILD

WORKDIR /src/

COPY ./ /src/

RUN go build -o storage-service-bin -buildvcs=false

FROM ubuntu

WORKDIR /srv

# Copy binary from build stage
COPY --from=BUILD /src/storage-service-bin /srv/storage-service-bin
COPY --from=BUILD /src/config.json /srv/config.json

RUN chmod +x /srv/storage-service-bin

# Set command to run your binary
CMD /srv/storage-service-bin start