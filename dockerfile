# Create a Jekyll container for GitHub Pages
# See this for current supported versions: https://pages.github.com/versions/
FROM ruby:3.3.4

# Set working directory
WORKDIR /srv/jekyll

# Update the Ruby bundler and install required gems
RUN gem update bundler

RUN gem install bundler jekyll

# Expose port 4000 for Jekyll server
EXPOSE 4000