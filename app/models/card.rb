class Card < ActiveRecord::Base
  has_many :locations

  validates :name, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :cover_image, presence: true

  accepts_nested_attributes_for :locations

  mount_uploader :cover_image, CardImageUploader

  def formatted_date
    self.date.strftime('%d %b %y')
  end
end
