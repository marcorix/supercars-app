class Car < ApplicationRecord

  belongs_to :user
  has_one_attached :photo
  validates :photo, :model, :color, :year, :price, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_model_and_year__and_color_and_address,
    against: [ :model, :year, :color, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
