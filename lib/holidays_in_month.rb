require 'holidays_in_month/version'
require 'active_support'
require 'active_support/time'
require 'time'
require 'yaml'

module Holidays
  def self.holidays_in_month(month, year)
    @national_holidays = {}
    @holidays = []
    d = 0

    yaml = YAML.load_file(File.expand_path('./../../holidays.yml', __FILE__))
    yaml.each do |date, name|
      @national_holidays.store(date.strftime("%Y-%m-%d"), name)
    end

    Time.days_in_month(month, year).times do
      d += 1
      wday = Date.new(year, month, d).wday
      #Saturday => wday == 6, Sunday => wday == 0
      @holidays << "#{year}-#{month}-#{d}" if wday == 6 || wday == 0
    end

    case month
    when 1
      @national_holidays = @national_holidays.select { |k| k.match(/#{year}-0#{month}-*/) }
    when 2
      @national_holidays = @national_holidays.select { |k| k.match(/#{year}-0#{month}-*/) }
    else
      @national_holidays = @national_holidays.select { |k| k.match(/#{year}-#{month}-*/) }
    end
    @holidays << @national_holidays
  end
end
