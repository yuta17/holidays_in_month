require './spec_helper'

describe Holidays do
  subject(:get_in_month) { Holidays.get_in_month(month, year) }
  describe '#get_in_month', '月の休日を返す' do
    context '2016年の2月の場合' do
      let(:month) { 2 }
      let(:year) { 2016 }
      let(:result) { ["2016-2-6", "2016-2-7", "2016-2-13", "2016-2-14", "2016-2-20", "2016-2-21", "2016-2-27", "2016-2-28", {"2016-02-11"=>"建国記念の日"}] }
      it { is_expected.to eq result }
    end
  end
end
