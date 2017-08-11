FROM dhoer/flyway:4.2

WORKDIR /flyway

COPY sql /flyway
COPY entrypoint /flyway
COPY flyway.conf /flyway

ENTRYPOINT ["/flyway/entrypoint"]
