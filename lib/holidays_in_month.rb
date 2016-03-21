require 'holidays_in_month/version'
require 'active_support'
require 'active_support/time'
require 'time'
require 'yaml'

module JP
  class Holiday
    def init
      @nationals = {}
      @holidays = []
    end

    def get_in_month(year, month)
      init
      holidays(year, month) << nationaldays.select { |n| n.match(/#{year}-#{"%02d" % month}-*/) }
    end

    private

    def nationaldays
      yaml = YAML.load_file(File.expand_path('./../../holidays.yml', __FILE__))
      yaml.each do |date, name|
        @nationals.store(date.strftime("%Y-%m-%d"), name)
      end
      @nationals
    end

    def holidays(year, month)
      num_days_of_month = Date.new(year, month).end_of_month.day

      1.upto(num_days_of_month) do |day|
        wday = Date.new(year, month, day).wday
        @holidays << "%04d-%02d-%02d" % [year, month, day] if wday == 6 || wday == 0
      end
      @holidays
    end
  end
end
