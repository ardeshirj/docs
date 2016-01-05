# Postgres in Fedora
Setting up Postgres database in Fedora

## Setup
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

# Get to postgres user bash
```shell
sudo su - postgres

  # Create new db
  createdb [name]

  # drop a db
  dropdb [name]

  # Get to postgres shell
  psql

    # Get list of existing database
    # postgres, template-0 & template-1 are the default ones
    \list

    # Create new user with roles
    CREATE USER the_user_name WITH CREATEDB LOGIN PASSWORD 'the-password';
```

## Configuration files
- /var/lib/pgsql/data/postgresql.conf
- /var/lib/pgsql/data/pg_hba.confs
