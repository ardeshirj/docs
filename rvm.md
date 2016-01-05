# RVM - Ruby Version Manager
Lets document what we usually use in rvm

## General
```shell
# In linux, install mpapis public key
  gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

# This will download and install rvm at ~/.rvm/
  curl -L https://get.rvm.io | bash -s stable

# Will add rvm PATH to
  $HOME/.profile
  $HOME/.bashrc
  $HOME/.zshrc
  $HOME/.mkshrc

# Will add rvm loading to
  $HOME/.bash_profile
  $HOME/.zlogin

# To Update
  rvm get stable

# To uninstall
  rvm implode
```
Need to enable login-shell in gnome-termial:

- Edit - Profile Preferences
- Title and Command tab
- checkbox - Run command as login shell

## Install ruby
```shell
# Show most recent ruby versions to install
  rvm list known
# Install ruby verison 2.1.2
  rvm install 2.1.2
# List all installed ruby versions
  rvm list

# Setup default alias
  rvm alias create default [ruby-version]

# Generate ri docs for current ruby version
  rvm docs generate
```

## Gemset
```shell
# Install gems in global gemset so we can use it in all projects
  rvm gemset use global
  gem install rubocop byebug bundler
# Create new gemset to use for a project
  rvm gemset create [you-name-it]
# List all the existing gemset for the current ruby verison
  rvm gemset list
# Use the new gemset
  rvm use gemset [you-name-it]
# Reset the gemset to default (SKIP this if you install gem via bundle)
  rvm gemset use [gemset-you-want-to-delete]
  rvm gemset empty
```

## Remove ruby or gemset
```shell
# Remove gemset
  rvm gemset remove [gemset-name]
# Remove specific ruby version
  rvm remove [ruby-version]
```

## Rubocop setup
```shell
# Switch to global gemset
  rvm use gemset global
# Install the gem
  gem install rubocop
```

## Bundle-Gemfile setup
```shell
# Install bundler in your current gemset
  gem install bundler
# Generate Gemfile by using gem called bundle
  bundle init
# Add any gem files that needed for your project for example:
  vim Gemfile
    gem 'rails', '~> 4.2.0'
    gem 'travis', '~> 1.7.4'
# Download and install gems and create Gemfile.lock
  bundle install
# To list installed gem in the gemset
  bundle show OR gem list
# Will remove gems that is not in Gemfile anymore
  bundle clean --force
```

## Set ruby and gemset for a project
```shell
# This will create .versions.conf
  rvm --create --versions-conf use [ruby-version]@[the-gemset]
```

## Common issues
```shell
# Install libsqlite3x-devel for rails sqlite3 gem
  sudo yum install libsqlite3x-devel
```
