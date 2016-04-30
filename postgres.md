# Postgres in Fedora
Setting up Postgres database in Fedora

## Setup
### OSX
```shell
Install postgres formula
brew install postgresql

# For Launchctrl to start postgresql at login:
ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents

# To load postgresql now:
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# OR use brew services wrapper for Launchctrl
brew services
# Check postgres status
brew status postgres
```
### Fedora
```shell
# Install the following packages
  sudo dnf install
    postgresql
    postgresql-contrib
    postgresql-devel
    postgresql-libs
    postgresql-server

# Get status of postgresql database
  sudo systemctl status postgresql

# Initialize the db
  sudo postgresql-setup initdb
  # It will create postgresql.conf & pg_hba.conf in /var/lib/pgsql
  # Also it will create the postgres user

# Update config file to use password method
  # Change ident method to md5 for specific connection like IPv6
  vim /var/lib/pgsql/data/pg_hba.conf
  # Example: local all all ident

# Restart the service after creating the cluster database
  sudo systemctl restart postgresql
```

## Get Into psql Shell
```shell
# Change to psql user
  # Fedora
  sudo su - postgres

  # OSX
  # No need change the user for osx

# Create/Drop a db
createdb [name]
dropdb [name]

# Create/Drop a db roles
createuser --createdb --pwprompt [name]
dropuser [name]

# List dbs
psql --list


# To get into psql shell
psql db-name

  # List tables
  \dt

  # List current user & roles
  \du
```

## Configuration files
- /var/lib/pgsql/data/postgresql.conf
- /var/lib/pgsql/data/pg_hba.confs
