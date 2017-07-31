FROM "dhoer/flyway:4.2-alpine"

COPY conf /conf
COPY sql /sql

RUN flyway migrate
