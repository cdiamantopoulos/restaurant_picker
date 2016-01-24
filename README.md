General Overview:

Restaurant Lunch Picker. This is an idea that has spawned while discussing lunch options at work. We certainly haven't been the first, and we won't be the last. The goal of this project is to get random lunch options when nobody can decide what to eat.

Current Features:
* User Sign Up
* User Login
* Add Restaurant
* Delete Restaurant


Features to Implement:

* Random Restaurant
  * This should be able to return an amount of options based on input, whether or not we want a quick or sitdown lunch, and approximate price we feel like spending.
* Create Groups
  * User should be able to create groups(For example Boston Lunch, Portland Lunch) and then create restaurants within the group. Pick from random restaurant within each group.

Misc TODO:
* Create API for a HipChat bot/Android App/iOS App

Usage:
* first run:
  * bundle exec --path ./gems
    * if this fails, sudo gem install bundler
* second run:
  * bundle exec rake prepdb
* third run:
  * bundle exec rails server

* server is now available on : http://localhost:3000
