# README

![Build Status](https://github.com/astevens246/news-api/actions/workflows/ci.yml/badge.svg)
![Uptime](https://img.shields.io/badge/uptime-99.5%25-brightgreen)

# News API

This is a News API that allows users to fetch, create, update, and delete news stories.

## Features

- Fetch news stories from an external API.
- CRUD operations for news stories.
- User authentication using the Devise gem.

## Endpoints

- **GET `/news`**: Fetch all saved news stories.
- **GET `/news/fetch`**: Fetch news stories from an external API.
- **POST `/news`**: Create a new news story (authenticated users only).
- **PUT `/update_news/:id`**: Update a news story.
- **DELETE `/news/:id`**: Delete a news story.

### Example Requests

- **Fetch all news stories**:
  ```sh
  curl -X GET http://localhost:3000/news
  ```

- **Create a new news story**:
  ```sh
  curl -X POST http://localhost:3000/news -d '{"title": "New Story", "content": "Story content here."}' -H "Content-Type: application/json"
  ```

## System Requirements

### Ruby Installation

This project requires Ruby version 3.2.0. You can check if Ruby is installed on your machine with the command:

```sh
ruby -v
```

If Ruby is not installed, you can install it using a version manager like [rbenv](https://github.com/rbenv/rbenv) or [RVM](https://rvm.io/).

### Database

This project uses PostgreSQL as a database. Ensure PostgreSQL is installed on your machine. You can download it from [here](https://www.postgresql.org/download/).

## Authentication

This project uses the Devise gem for user authentication. Only authenticated users can create news stories.

## Installation

To configure the project, you need to set up the database and install the required gems. You can do this with the following commands:

```sh
# Install dependencies
bundle install

# Set up the database
bin/rails db:setup
```

## Database Creation and Initialization

The database is created and initialized with the following commands:

```sh
bin/rails db:create
bin/rails db:migrate
```

## How to Run the Test Suite

You can run the test suite with the command:

```sh
bin/rails test
```

## Deployment Instructions

To deploy the project using Docker, follow these steps:

### Docker Setup

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/astevens246/news-api
   cd your-repo
   ```

2. **Build and Run the Docker Containers**:
   ```sh
   docker-compose up --build
   ```

3. **Create and Migrate the Database**:
   Open a new terminal window and run:
   ```sh
   docker-compose run web rake db:create
   docker-compose run web rake db:migrate
   ```

4. **Access the Application**:
   The application will be available at `http://localhost:3000`.

### Stopping the Application
To stop the application, press `Ctrl+C` in the terminal where `docker-compose up` is running. To remove the containers, run:
```sh
docker-compose down
```

### Troubleshooting
- If you encounter any issues, ensure Docker is running and you have the latest version installed.
- Check the logs for any error messages using `docker-compose logs`.

## Uptime Monitoring

This application is monitored for uptime using [UptimeRobot](https://uptimerobot.com/). 

### Current Status
- **Monitoring URL**: [https://news-api.dev.golfiseasy.me](https://news-api.dev.golfiseasy.me)
- **Status Page**: [View Status Page](https://stats.uptimerobot.com/pv1dCqqyFm)
- **Current Status**: Up

## Deployment Instructions to CapRover

1. **Install CapRover CLI**:
   Make sure you have the CapRover CLI installed. You can install it using npm:
   ```sh
   npm install -g caprover
   ```

2. **Login to CapRover**:
   Use the following command to log in to your CapRover server:
   ```sh
   caprover login
   ```

3. **Create a New App**:
   Create a new app on your CapRover server:
   ```sh
   caprover apps create <your-app-name>
   ```

4. **Deploy Your App**:
   Deploy your app using the following command:
   ```sh
   caprover deploy
   ```

5. **Set Environment Variables**:
   Set any necessary environment variables (like `DATABASE_USERNAME` and `DATABASE_PASSWORD`) in the CapRover dashboard.

6. **Access Your Application**:
   Your application will be available at the domain you set up in CapRover.
