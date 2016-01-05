# pip-virtualenv
Install virtualevn with pip to virtualize your pip

## General
```shell
# Make sure to have python install in your system
  python --version
  pip --version

# Install virtualenv globally
  pip install virtualenv

# Probably virtualenv & pep8 are the only package you want to install globally
```

## Setup virtualenv
```shell
# In your project, create virtualenv called env
  virtualenv env

# Activate the virtualenv:
  source env/bin/activate

# Install the package - This all be local
  pip install [package-name]
# Create requirements file
  pip freeze > requirements.txt
# Install packages from the requirements file
  pip install -r requirements.txt

# To get out of this virtualenv
  deactivate
```
