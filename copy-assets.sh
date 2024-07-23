#!/bin/bash

# Ensure the script exits if any command fails
set -e

# Check if input CSV is provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <workout-name> <workout-output-path> <workout-audio-path>"
  exit 1
fi

WORKOUT_NAME=$1
WORKOUT_OUTPUT_PATH=$2
WORKOUT_AUDIO_PATH=$3

mkdir -p workouts/${WORKOUT_NAME}/audio

cp $WORKOUT_AUDIO_PATH/$WORKOUT_NAME/* workouts/$WORKOUT_NAME/audio/
cp $WORKOUT_OUTPUT_PATH/$WORKOUT_NAME.json workouts/$WORKOUT_NAME/workout.json
cp $WORKOUT_OUTPUT_PATH/${WORKOUT_NAME}_audio_timeline.json workouts/$WORKOUT_NAME/workout-timeline.json

echo "Workout assets transfered."

