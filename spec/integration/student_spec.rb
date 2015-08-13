require 'spec_helper'

describe Student do
  subject { FactoryGirl.cache(:student) }

  context 'validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
