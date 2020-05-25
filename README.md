# Make Hasura work with Heroku for CI/CD and DevOps
This is an attempt to make Hasura work with Heroku for automatically migrating new changes pushed to Master onto a staging server in Heroku.

More info of Hasura's automatic migrations and metadata:
https://hasura.io/docs/1.0/graphql/manual/migrations/advanced/auto-apply-migrations.html#applying-migrations

I found solutions to some of the problems I found while trying to do this here:
https://github.com/hasura/graphql-engine/issues/4651

Also thanks for sander on Discord for helping me out!

It works on heroku with this custom image

## Important things to set in the Heroku server

Make sure to set in Heroku's Config Vars:
1. `HASURA_GRAPHQL_DATABASE_URL` to the same value in `DATABASE_URL` 
2. `HASURA_GRAPHQL_CLI_ENVIRONMENT` to `default`

Might need to restart the Dynos with `More` > `Restart all Dynos`

## One click deploy
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/joshuarobs/obscure-hamlet-63320/tree/master)
