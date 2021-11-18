class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_model_and_year__and_color_and_location,
    against: [ :model, :year, :color, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
