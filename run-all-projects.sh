#!/bin/sh

cd api-gateway; ./gradlew clean build jar; java -jar build/libs/*.jar >> ../console.log &; cd ..
cd auth-server; ./gradlew clean build jar ; java -jar build/libs/*.jar >> ../console.log &; cd ..
cd config-server; ./gradlew clean build jar; java -jar build/libs/*.jar >> ../console.log; cd ..
cd comments-webservice; ./gradlew clean build publishToMavenLocal jar; java -jar build/libs/*.jar >> console.log; cd ..
cd task-webservice; ./gradlew clean build jar; java -jar build/libs/*.jar >> console.log 2>&1 &; cd ..
cd user-webservice; ./gradlew clean build jar; java -jar build/libs/*.jar >> console.log 2>&1 &; cd ..
cd web-portal; ./gradlew clean build jar; java -jar build/libs/*.jar >> console.log 2>&1 &; cd ..
cd webservice-registry; ./gradlew clean build jar; java -jar build/libs/*.jar >> console.log 2>&1 &; cd ..
cd zipkin-server; ./gradlew clean build jar; java -jar build/libs/*.jar >> console.log 2>&1 &; cd ..