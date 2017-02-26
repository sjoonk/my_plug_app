# MyPlugApp

## Deploying to Heroku

1. Create a Heroku app with [this buildpack](https://github.com/HashNuke/heroku-buildpack-elixir):

  $ heroku create --buildpack "https://github.com/HashNuke/heroku-buildpack-elixir.git"

2. Push app to Heroku master repo:

  $ git push heroku master

3. Open in a browser:

  $ heroku open
  
Done!  