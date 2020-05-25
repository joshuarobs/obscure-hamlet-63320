FROM hasura/graphql-engine:latest.cli-migrations-v2

COPY ./migrations /hasura-migrations
COPY ./metadata /hasura-metadata

# Change $DATABASE_URL to your Heroku Postgres URL if you're not using
# the primary Postgres instance in your app
CMD graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console
