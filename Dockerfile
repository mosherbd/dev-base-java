FROM mosherbd/devcontainer-base

LABEL maintainer="mosherbd@gmail.com"
LABEL LABEL version="1.0"
LABEL description="java development container image"

ARG DEBIAN_FRONTEND=noninteractive

ARG JAVA_VERSION="java"
ARG ANT_VERSION="ant"
ARG MAVEN_VERSION="maven"
ARG GRADLE_VERSION="gradle"
ARG IVY_VERSION=2.5.0
ARG IVY_JAR_DEST_FILEPATH=~/.sdkman/candidates/ant/current/lib/
ARG VERSION_CONTROL=git

COPY utils/*.sh ${DEVCONTAINER_UTILS_PATH}/

RUN sudo apt-install.sh zip unzip curl gpg ${VERSION_CONTROL} && \
    sdk-install.sh ${JAVA_VERSION} ${ANT_VERSION} ${MAVEN_VERSION} ${GRADLE_VERSION} && \
    ivy-install.sh ${IVY_VERSION} ${IVY_JAR_DEST_FILEPATH}
