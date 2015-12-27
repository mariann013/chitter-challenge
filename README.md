Chitter Challenge [![Build Status](https://travis-ci.org/mariann013/chitter-challenge.svg)](https://travis-ci.org/mariann013/chitter-challenge)
=================

User Stories
-------

```sh
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

As a Maker
So that I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```

Description
------

This application is based upon twitter, users sign in to the application using their credentials and then are able to post and see their posts and the posts of others. 

The application is written in ruby using datamapper and a postgres database. Tested using rspec and capybara. 

Instalation:
  - Clone git repo 
  - Run bundle install from the command line
  - Run rspec to run the tests
  - Run rackup or ruby app.rb and visit the local host to interact with the app
