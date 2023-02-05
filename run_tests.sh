#!/bin/sh

docker run -d --name calculator-app -p 5000:5000 calculator-app
robot calculator_tests.robot
docker stop calculator-app
docker rm calculator-app
