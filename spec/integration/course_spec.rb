require 'spec_helper'

describe Course do
  subject { FactoryGirl.cache(:course) }

  context 'validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
