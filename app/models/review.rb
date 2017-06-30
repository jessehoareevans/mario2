class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true
  validates_length_of :content, :minimum => 50, :maximum => 250, :allow_blank => false
end
