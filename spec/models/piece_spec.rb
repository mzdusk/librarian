require 'spec_helper'

describe Piece do
  context 'when name is empty' do
    subject { build :piece_no_name }

    it { should_not be_valid }
  end
end
