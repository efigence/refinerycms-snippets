# Snippets engine for Refinery CMS.

## About

Optional, multilanguege ready, stable support for versioning to refinery-snippets

## Requirements

* RefineryCMS engine (refinerycms >= 2.0.10)
* refinerycms-i18n, '~> 2.0.2'
* sass-rails
* bootstrap-sass

## Install

Add this line to your applications `Gemfile`

    gem 'refinerycms-sl-snippets-versions', '~> 1.0.0', :require => 'refinerycms-snippets'
    
Next run

    bundle install
    rails g refinerycms:snippets
    rake db:migrate

## Screenshot

![alt text](https://github.com/rubyconvict/refinery-snippets-versions/raw/master/app/assets/images/screen.png "Screenshot")

## Thanks

This is build upon the original refinerycms-snippets from keram: https://github.com/keram/refinerycms-snippets

refinerycms-sl-snippets-versions is based on a stable version of this fork: 
https://github.com/simplelogica/refinerycms-snippets
commit: ce111a5888bd28909fd0bdce2fc62d6eda4abfaf
