# CatGen

A random cat nickname generator, based on actual nicknames friends have used for their actual cats.

Mildly NSFW for swearing.

This absolutely does not need to be a back-end service but I had been tinkering with Sinatra at the time. Long-term I'd like to just turn it into a static site with a little bit of Javascript but that's a project for later. For now, leave as is so I can continue tinkering with a working version.

## Running Locally

To run from the command line:

```
ruby cat-app.rb -s Puma
```

or
```
bundle exec puma
```

## Deploying to Fly

This is currently set up to deploy continuously via [these instructions](https://fly.io/docs/app-guides/continuous-deployment-with-github-actions/) but when that's not set up, you can deploy this to Fly via `fly deploy` from the repo locally.
