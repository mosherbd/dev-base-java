# dev-base-java

## Overview
This is a ubuntu image derived from dev-base with sdkman, java sdk, ant, ivy, maven, and gradle installed. Specific versions for each can easily be specified in the Dockerfile.

## Automatic Builds
Changes to this Dockerfile trigger automatic builds for mosherbd/dev-base-java on Docker Hub.

## Utils
- ivy_install
Automates installation of the specified version of ivy
- sdk_install
wrapper for sdkman to install multiple sdks in a single command and clean up junk files to reduce container size.