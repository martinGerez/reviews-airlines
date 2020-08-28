class Airline < ApplicationRecord
  # callbacks
  before_create :slugify

  # associations
  has_many :reviews

  # methods
  private

  def slugify
    self.slug = name.parameterize
  end

  def average_score
    reviews.average(:score).round(2).to_f
  end
end
