class Piece < ActiveRecord::Base
  attr_accessible :composer, :content, :name

  validates :name, :presence => true
end
