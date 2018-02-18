# Heroku buildpack for django-compressor

[Django-compressor](https://django-compressor.readthedocs.io/en/latest/) is a convenient static files processor for Django, bundling and compressing JS and CSS files from regular HTML tags, without need to define bundles separately.

This buildpack runs offline compression with `python manage.py compress --force`, if `django-compressor` exists in `requirements.txt`. No other configuration options are checked to determine whether compress should run.

Licensed under [MIT license](LICENSE.md).

## How to enable this buildpack?

Go to https://dashboard.heroku.com/ , select your application, settings, "Add buildpack". Enter `https://github.com/ojarva/django-compressor-heroku-buildpack.git` to buildpack URL field.

Alternatively use Heroku CLI tool with `heroku buildpacks:add https://github.com/ojarva/django-compressor-heroku-buildpack.git`.

## How to contribute?

Fork [this repository](https://github.com/ojarva/django-compressor-heroku-buildpack) in Github, create a new branch, make your changes and create a new PR.

This buildpack is only for django-compressor, and exclusive for Heroku. Please create a separate buildpack if you want to add support for any other plugins/addons/...
