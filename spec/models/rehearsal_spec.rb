require 'spec_helper'

describe Rehearsal do
  context "when content is empty" do
    subject { build(:rehearsal_no_content) }
    it { should_not be_valid }
  end

  context "when date is empty" do
    subject { build(:rehearsal_no_date) }
    it { should_not be_valid }
  end
end
