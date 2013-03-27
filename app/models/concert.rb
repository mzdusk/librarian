class Concert < ActiveRecord::Base
  attr_accessible :date, :detail, :place, :title

  validates :title, :presence => true
end
