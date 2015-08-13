require 'spec_helper'

describe Classroom do
  subject { FactoryGirl.cache(:classroom) }

  context 'validations' do
    it { is_expected.to validate_uniqueness_of(:student_id) }
    it { is_expected.to validate_uniqueness_of(:course_id) }
  end
end
