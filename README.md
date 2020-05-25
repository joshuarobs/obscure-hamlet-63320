# obscure-hamlet-63320
obscure-hamlet-63320

Trying to get this to work, based on info found here:
https://github.com/hasura/graphql-engine/issues/4651

It works on heroku with this custom image

Make sure to set in Heroku's Config Vars:
1. `HASURA_GRAPHQL_DATABASE_URL` to the same value in `DATABASE_URL` 
2. `HASURA_GRAPHQL_CLI_ENVIRONMENT` to `default`

Might need to restart the Dynos with `More` > `Restart all Dynos`

## One click deploy
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/joshuarobs/obscure-hamlet-63320/tree/master)
