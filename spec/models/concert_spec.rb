require 'spec_helper'

describe Concert do
  context "when title is empty" do
    subject { build :concert_no_title }

    it { should_not be_valid }
  end
end
