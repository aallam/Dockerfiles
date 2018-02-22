FROM image: openjdk:8-jdk

MAINTAINER aallam

ARG ANDROID_COMPILE_SDK=27
ARG ANDROID_BUILD_TOOLS=27.0.3
ARG ANDROID_SDK_TOOLS=3859397

WORKDIR /opt/android/sdk

ENV ANDROID_HOME /opt/android/sdk
ENV PATH="${PATH}:${ANDROID_HOME}/platform-tools"

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1 && \
    wget --quiet --output-document=/tmp/sdk-tools-linux.zip https://dl.google.com/android/repository/sdk-tools-linux-$ANDROID_SDK_TOOLS.zip && \
    unzip /tmp/sdk-tools-linux.zip -d $ANDROID_HOME && \
    echo y | $ANDROID_HOME/tools/bin/sdkmanager "platforms;android-$ANDROID_COMPILE_SDK" "build-tools;$ANDROID_BUILD_TOOLS" "extras;google;m2repository" "extras;android;m2repository" "extras;google;google_play_services"

WORKDIR /root
