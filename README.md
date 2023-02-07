# MatchMeWithCanada

* Ruby version
3.2.0

* System dependencies

* Configuration
bundle install

* Database creation
rails db:create

* Database initialization
rails db:migrate
rails db:seed

* How to run the test suite
rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
bundle install; bundle exec rake assets:precompile; bundle exec rake assets:clean; bundle exec rake db:create db:migrate;

* ...