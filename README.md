# Holidays in Month

This gem is return holidays(Saturday, Sunday, National) in month in Japan.

```ruby
Holidays.holidays_in_month(1,2016)
=> ["2016-1-2", "2016-1-3", "2016-1-9", "2016-1-10", "2016-1-16", "2016-1-17",
  "2016-1-23", "2016-1-24", "2016-1-30", "2016-1-31", {"2016-01-01"=>"元日", "2016-01-11"=>"成人の日"}]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'holidays_in_month'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install holidays_in_month

## Usage

```ruby
Holidays.holidays_in_month(month,year)

example:
Holidays.holidays_in_month(12,2016)
=> ["2016-12-3", "2016-12-4", "2016-12-10", "2016-12-11", "2016-12-17", "2016-12-18",
  "2016-12-24", "2016-12-25", "2016-12-31", {"2016-12-23"=>"天皇誕生日"}]
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
