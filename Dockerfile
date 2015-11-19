# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD ./life_support /go/src/life_support

WORKDIR /go/src/life_support
# Build the life_support command inside the container.
RUN go install 
# Run the outyet command by default when the container starts.
#ENTRYPOINT /go/bin/life_support


COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

# Document that the service listens on port 80
EXPOSE 80
