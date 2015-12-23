# rbenv - Ruby Environment

``rbevn``, ``rbenv-build`` & ``rbenv-gemset`` are helper to setup different versions of ruby and gems.

## Setup - OSX (Brew)
Brew it
```shell
brew install rbenv ruby-build rbenv-gemset
```

Update you .bash_profile
```shell
# Enable shims and autocompletion for rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
```

Get list of available ruby and install one:
```shell
rbenv install -l
rbenv install 2.2.3
```

Set global ruby version in:
```shell
# This will create version file in /usr/local/var/rbenv/
rbenv global 2.2.3
```

## Setup - Project Specific
Here is an example for ``foo`` project
```shell
mkdir foo
cd foo
git init

rbenv local 2.2.3   # Will create .ruby-version file
rbenv-gemset init   # Will create .rbenv-gemsets file

rbenv-gemset list   # List all existing gemsets
rbenv-gemset active # Your gemset should be activated!

# Install bundler to manage gems from Gemfile
gem install bundler
vim Gemfile
  source 'https://rubygems.org'
  gem 'bundler'

git add Gemfile Gemfile.lock .rbenv-gemsets .ruby-version
```

``rbenv-gemset init`` will create the gemsets in the following path: ``/usr/local/var/rbenv/versions/[ruby-version]/gemsets/[project-name]/gems``
