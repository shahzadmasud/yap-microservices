#!/bin/sh

cd api-gateway; ./gradlew clean; cd ..
cd auth-server; ./gradlew clean ; cd ..
cd config-server; ./gradlew clean ; cd ..
cd comments-webservice; ./gradlew clean; cd ..
cd task-webservice; ./gradlew clean; cd ..
cd user-webservice; ./gradlew clean; cd ..
cd web-portal; ./gradlew clean; cd ..
cd webservice-registry; ./gradlew clean; cd ..
cd zipkin-server; ./gradlew clean ; cd ..
