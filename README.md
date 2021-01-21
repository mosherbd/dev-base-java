# devcontainer-java

## Overview
This Dockerfile extends the mosherbd/devcontainer-base container image with sdkman, java sdk, ant, ivy, maven, and gradle. Specific versions for each can easily be specified in the Dockerfile.

## Automatic Builds
Changes to this Dockerfile trigger automatic builds for mosherbd/devcontainer-java on Docker Hub.

## Utils

The following utils are copied to /usr/local/bin and are included in PATH.

### ivy_install.sh 

Automates installation of the specified version of ivy

    ivy_install.sh [ivy version] [ivy jar dest filepath]

### sdk_install.sh

Wrapper for sdkman to install multiple sdks in a single command and clean up junk files to reduce container size.

    sdk_install.sh ["[sdk [version]]", ...]
