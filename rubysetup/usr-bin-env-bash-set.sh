#!/usr/bin/env bash
set -e

# ====================================================
# Jekyll Environment Setup Script
# Usage:
#   ./setup_jekyll_env.sh --fixed   # install fixed versions
#   ./setup_jekyll_env.sh --latest  # install latest versions
# ====================================================

# --- Configuration ---
FIXED_RUBY="3.3.7"
FIXED_BUNDLER="2.6.3"
FIXED_JEKYLL="4.4.1"

# --- Parse arguments ---
MODE=$1
if [ -z "$MODE" ]; then
  echo "Usage: $0 --fixed | --latest"
  exit 1
fi

# --- Install prerequisites ---
echo ">>> Installing prerequisites..."
sudo apt update
sudo apt install -y git curl build-essential libssl-dev libreadline-dev zlib1g-dev libffi-dev libyaml-dev

# --- Install rbenv ---
if [ ! -d "$HOME/.rbenv" ]; then
  echo ">>> Installing rbenv..."
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
  exec $SHELL
fi

# --- Install ruby-build plugin ---
if [ ! -d "$HOME/.rbenv/plugins/ruby-build" ]; then
  echo ">>> Installing ruby-build..."
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

# --- Fixed mode ---
if [ "$MODE" == "--fixed" ]; then
  echo ">>> Installing fixed versions..."
  if ! rbenv versions | grep -q "$FIXED_RUBY"; then
    rbenv install $FIXED_RUBY
  fi
  rbenv global $FIXED_RUBY
  gem install bundler -v $FIXED_BUNDLER
  gem install jekyll -v $FIXED_JEKYLL
fi

# --- Latest mode ---
if [ "$MODE" == "--latest" ]; then
  echo ">>> Installing latest versions..."
  LATEST_RUBY=$(rbenv install -l | grep -v - | tail -1 | tr -d ' ')
  if ! rbenv versions | grep -q "$LATEST_RUBY"; then
    rbenv install $LATEST_RUBY
  fi
  rbenv global $LATEST_RUBY
  gem install bundler
  gem install jekyll
fi

# --- Show summary ---
echo ">>> Installation complete!"
ruby -v
bundle -v
jekyll -v

