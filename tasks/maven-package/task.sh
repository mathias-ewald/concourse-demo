#!/bin/bash
set -euxo pipefail

BASE_DIR="$(pwd -P)"
PROJECT="code"
PROJECT_PATH="$PROJECT_PATH"
JAR_DIR="jar"

cd $BASE_DIR/$PROJECT/$PROJECT_PATH 
maven clean package
cd $BASE_DIR

JAR_FILE="$(ls $BASE_DIR/$PROJECT/$PROJECT_PATH/target/*.jar)"
cp $JAR_FILE $JAR_DIR/
