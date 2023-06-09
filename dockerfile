# Create a Jekyll container from a Ruby Alpine image

# At a minimum, use a Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc make git

# Update Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll