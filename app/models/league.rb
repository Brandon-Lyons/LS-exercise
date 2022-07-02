class League < ApplicationRecord
  validates :name, presence: true
  validates :latitude, :longitude, presence: true, numericality: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  reverse_geocoded_by :latitude, :longitude

  class << self
    def leagues_to_sponsor(radius:, latitude:, longitude:, budget:)
      leagues = League.near([latitude, longitude], radius).where.not("price >= ?", budget).sort_by(&:price).to_a
      while leagues.sum(&:price) > budget
        leagues.pop
      end
      leagues
    end
  end
end
