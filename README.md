# Holidays in Month

This gem is return holidays(Saturday, Sunday, National) of month in Japan.

## Usage

  ```ruby
JP::Holiday.new.in_month(2016, 1)
  => ["2016-1-2", "2016-1-3", "2016-1-9", "2016-1-10", "2016-1-16", "2016-1-17",
  "2016-1-23", "2016-1-24", "2016-1-30", "2016-1-31", {"2016-01-01"=>"元日", "2016-01-11"=>"成人の日"}]
  ```

## Installation

  Add this line to your application's Gemfile:

  ```ruby
  gem 'holidays_in_month'
  ```

  And then execute:

  $ bundle install

  Or install it yourself as:

  $ gem install holidays_in_month

## License

  The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
