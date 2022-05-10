# Start image custom image from ruby:2.7 image, use 'scratch' to start from scratch
FROM ruby:2.7 

# Sign this masterpiece of a dockerfile
LABEL maintainer="bmarianoleite3@gmail.com"

# Get updated system package and install nodejs
# Concatenante all commands in one line so that every time a new package is installed the system gets updated as well
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
    nodejs npm

# first gemfile files to keep simple file changes from making docker build run bundle everytime 
COPY Gemfile* /usr/src/app/

# Choose the working directory for docker commands
WORKDIR /usr/src/app

# Install gems necessary for rails app
RUN npm install --global yarn
RUN bundle install

# Copy all other files from current folder to the container
COPY . /usr/src/app 

# Run migrations and get seeds to db 
RUN rails db:migrate
RUN rails db:seed
RUN rails assets:precompile

# Run rails server by default
CMD [ "bin/rails", "s", "-b", "0.0.0.0" ] 
