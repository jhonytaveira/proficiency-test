require 'model_helper'

describe Classroom do
  it { is_expected.to validate_presence_of(:student_id) }
  it { is_expected.to validate_presence_of(:course_id) }
  it { is_expected.to validate_presence_of(:entry_at) }

  it { is_expected.to belong_to(:student) }
  it { is_expected.to belong_to(:course) }
end
