require 'holidays_in_month/version'
require 'active_support'
require 'active_support/time'
require 'time'
require 'yaml'
require 'holidays_in_month/holiday.rb'
require 'holidays_in_month/holidays.rb'

module HolidaysInMonth
  def self.holidays_in_month(month, year)
    holidays = []
    d = 0
    Time.days_in_month(month, year).times do
      d += 1
      wday = Date.new(year, month, d).wday
      holidays << "#{year}-#{month}-#{d}" if wday == 0
    end
    @holidays = holidays
  end
end
