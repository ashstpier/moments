class Location < ActiveRecord::Base
  belongs_to :card

  validates :geojson, presence: true
end
