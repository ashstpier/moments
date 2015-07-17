class Card < ActiveRecord::Base

  validates :name, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :cover_image, presence: true

  mount_uploader :cover_image, CardImageUploader

  def formatted_date
    self.date.strftime('%d %b %y')
  end
end
