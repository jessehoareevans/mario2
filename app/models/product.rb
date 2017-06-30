class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
    )}

    scope :most_recent, -> { order(created_at: :desc).limit(3)}

    scope :usa, -> { where(:origin => "USA")}
end
