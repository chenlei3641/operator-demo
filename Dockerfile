# Use distroless as minimal base image to package the manager binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
#FROM debian:unstable-20211220-slim@sha256:8a08ef00480e920c6e74cc44fc0b413a9150954c4ffa32d5502ba6eee3c11a62
FROM gcr.io/distroless/static:nonroot@sha256:957bbd91e4bfe8186bd218c08b2bbc5c852e6ebe6a7b2dcc42a86b22ea2b6bb6
WORKDIR /
COPY manager manager
USER 65532:65532

ENTRYPOINT ["/manager"]
