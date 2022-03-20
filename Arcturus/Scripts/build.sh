#!/bin/bash

supervisord -c /app/Supervisor/supervisord.conf

cd /app/Sources
mvn package
cp /app/config.ini /app/Sources/target/config.ini

supervisorctl start arcturus-emulator

tail -f /dev/null