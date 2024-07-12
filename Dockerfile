# Arch will be changed while building from GitHub Actions CI Workflow
# anapsix/alpine-java:8_jdk
# openjdk/8-jdk-alpine
# arm64v8/openjdk
# 从 GitHub Actions CI 工作流构建时，Arch 将更改 anapsixalpine-java：8_jdk openjdk8-jdk-alpine arm64v8openjdk

ARG CI_FROM=null
FROM ${CI_FROM}
RUN echo "Set FROM to $CI_FROM"

# Output target platform
ARG TARGETPLATFORM
RUN echo "Building for ARCH $TARGETPLATFORM"


WORKDIR /data
EXPOSE 7000 7001


# Set entrypoint
COPY ./assets/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]