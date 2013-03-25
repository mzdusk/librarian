class Score < ActiveRecord::Base
  attr_accessible :data, :name, :size, :content_type

  validates :name, :presence => true
end
