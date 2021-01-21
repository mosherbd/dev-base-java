FROM mosherbd/dev-base

LABEL maintainer="mosherbd@gmail.com"
LABEL LABEL version="1.0"
LABEL description="java development image"

ARG DEBIAN_FRONTEND=noninteractive

ARG JAVA_VERSION="java"
ARG ANT_VERSION="ant"
ARG MAVEN_VERSION="maven"
ARG GRADLE_VERSION="gradle"
ARG IVY_VERSION=2.5.0
ARG IVY_JAR_DEST_FILEPATH=~/.sdkman/candidates/ant/current/lib/

COPY scripts/*.sh /usr/local/bin/

RUN sudo apt-install-wrapper.sh zip unzip curl gpg && \
    sdk_install.sh ${JAVA_VERSION} ${ANT_VERSION} ${MAVEN_VERSION} ${GRADLE_VERSION} && \
    sudo ivy_install.sh ${IVY_VERSION} ${IVY_JAR_DEST_FILEPATH}
