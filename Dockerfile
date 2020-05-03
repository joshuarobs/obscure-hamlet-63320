FROM hasura/graphql-engine:latest

# Change $DATABASE_URL to your Heroku Postgres URL if you're not using
# the primary Postgres instance in your app
CMD graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console