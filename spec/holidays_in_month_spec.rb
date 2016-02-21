require './spec_helper'

describe HolidaysInMonth do
  describe '#holidays_in_month' do
    context 'correct value' do
      before do
        @holidays = []
        @month = 2
        @year = 2016
        @d = 0
      end
      it 'add holidays to array if wday is holidays in days in month' do
        Time.days_in_month(@month, @year).times do
          @d += 1
          wday = Date.new(@year, @month, @d).wday
          @holidays << "#{@year}-#{@month}-#{@d}" if wday == 0
        end
        expect(@holidays).to match(["2016-2-7", "2016-2-14", "2016-2-21", "2016-2-28"])
      end
    end

    #   context 'nothing month or days' do
    #     it 'raises error'
    #   end
  end
  #
  # describe '#add_holidays' do
  #   context 'correct value' do
  #     it 'return add holidays in array'
  #   end
  #
  #   context 'nothing month or days' do
  #     it 'raises error'
  #   end
  # end
  #
  # describe '#remove_holidays' do
  #   context 'correct value' do
  #     it 'return remove holidays in array'
  #   end
  #
  #   context 'nothing month or days' do
  #     it 'raises error'
  #   end
  # end
end
