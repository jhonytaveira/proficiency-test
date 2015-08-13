require 'model_helper'

describe Student do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:register_number) }
end
