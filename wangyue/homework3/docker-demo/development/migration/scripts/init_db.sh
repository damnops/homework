#!/bin/bash

mongo ${DB_HOST}:${DB_PORT}/${DB_NAME} <<EOF
use ${DB_NAME}
db.dropDatabase()

use ${DB_NAME}
db.user.insert({ "user" : "testuser1"});
db.user.insert({ "user" : "testuser2"});

quit()
EOF