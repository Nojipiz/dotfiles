#!/bin/bash

START_EMULATOR="emulator"
DEV_RUN="dev"
PROD_RUN="prod"

# Android Stuff
ANDROID_TOOLS=~/Android/Sdk/tools/
EMULATOR=~/Android/Sdk/tools/emulator
DEFAULT_EMULATOR=Android_9.0_Google_APIs

# Gradle Project Stuff
GRADLE_WRAPPER=gradlew
DEV_BUILD_TASK=app:installDevDebug
PROD_BUILD_TASK=app:installReleaseDebug

if [[ $1 == $START_EMULATOR ]]; then
  $EMULATOR -avd $DEFAULT_EMULATOR
elif  [[ $1 == $DEV_RUN ]]; then
  ./$GRADLE_WRAPPER $DEV_BUILD_TASK
elif [[ $1 == $PROD_RUN ]]; then
  ./$GRADLE_WRAPPER $PROD_BUILD_TASK
fi
