require 'yaml'

module HolidaysInMonth
  class Holidays
    def initialize
      @holidays = {}
      yaml = YAML.load_file(File.expand_path('../../../holidays.yml, __FILE__'))
      yaml.map do |key, value|
        @holidays[key] = Holiday.new(key, value)
      end
    end
  end
end
