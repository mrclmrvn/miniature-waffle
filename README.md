# README

* Ruby version

  Install ruby 4.0.0 with [asdf](https://asdf-vm.com/guide/getting-started.html)

  ```
  # asdf plugin add ruby
  # (or) asdf plugin update ruby
  asdf install ruby 4.0.0
  ```

* Checkout code

  ```
  git clone https://github.com/mrclmrvn/miniature-waffle.git reservations
  cd reservations
  bundle install
  ```

* Database creation

  ```
  rails db:create
  ```

* Database initialization

  ```
  rails db:migrate
  ```

* How to run the test suite

  ```
  bundle exec rspec
  ```

* Run app locally

  ```
  bin/dev
  ```
* Make an API request

  ```
  curl -X POST http://127.0.0.1:3000/api/v1/reservations -H "Content-Type: application/json" -d @spec/fixtures/booking.json
  ```
