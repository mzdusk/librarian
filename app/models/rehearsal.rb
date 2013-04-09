class Rehearsal < ActiveRecord::Base
  attr_accessible :content, :date, :place

  validates :content, :presence => true
  validates :date, :presence => true
end
