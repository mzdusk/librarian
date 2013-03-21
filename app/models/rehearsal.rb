class Rehearsal < ActiveRecord::Base
  attr_accessible :content, :date

  validates :content, :presence => true
  validates :date, :presence => true
end
