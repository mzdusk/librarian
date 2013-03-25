require 'spec_helper'

describe Score do
  context 'when name is empty' do
    subject { build :score_no_name }

    it { should_not be_valid }
  end
end
