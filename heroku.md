# Heroku

## Toolbelt
```shell
wget -qO- https://toolbelt.heroku.com/install.sh | sh
```

## Commands
```shell
  # Login
  heorku login

  # Create app (Also add heroku to git remote)
  heroku create
  # Create app with name example
  heroku create example
  # Or even rename it after you create it
  heroku apps:rename newName

  # Push to heroku - Done!
  git push heroku master

  # Check running process
  heroku ps

  # Get app logs
  heroku logs --tail

  # Scale the app
  heroku ps:scale web=1

  # Open bash in your app directory
  heroku run /bin/bash

  # Shutdown the app
  heroku ps:scale web=0
```
