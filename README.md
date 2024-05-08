# README

# News API

This is a News API that allows users to fetch, create, update, and delete news stories.

## Features

- Fetch news stories from an external API.
- CRUD operations for news stories.
- User authentication using the Devise gem.

## Endpoints

- GET `/news`: Fetch all saved news stories.
- GET `/news/fetch`: Fetch news stories from an external API.
- POST `/news`: Create a new news story (authenticated users only).
- PUT `/update_news/:id`: Update a news story.
- DELETE `/news/:id`: Delete a news story.

## Database

This project uses SQLite as a database.

## Authentication

This project uses the Devise gem for user authentication. Only authenticated users can create news stories.
## Ruby version

This project uses Ruby version 2.7.1. You can check your Ruby version with the command `ruby -v`.

## System dependencies

This project uses SQLite as a database and Rails as the web framework. You can install SQLite with the command `sudo apt-get install sqlite3 libsqlite3-dev` and Rails with the command `gem install rails`.

## Configuration

To configure the project, you need to set up the database and install the required gems. You can do this with the commands `bin/rails db:setup` and `bundle install`.

## Database creation

The database is created with the command `bin/rails db:create`.

## Database initialization

The database is initialized with the command `bin/rails db:migrate`.

## How to run the test suite

You can run the test suite with the command `bin/rails test`.

## Deployment instructions

To deploy the project, you can use Heroku. First, create a new Heroku app with the command `heroku create`. Then, push the code to Heroku with the command `git push heroku master`. Finally, migrate the database with the command `heroku run rake db:migrate`.