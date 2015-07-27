class Card < ActiveRecord::Base
  belongs_to :user
  has_one :location

  validates :name, presence: {:message => "Please provide a name for your event" }
  validates :date, presence: true
  validates :description, presence: {:message => "Please provide a description for your event" }
  validates :cover_image, presence: {:message => "Upload a cover image for your event" }

  accepts_nested_attributes_for :location

  mount_uploader :cover_image, CardImageUploader

  def formatted_date
    self.date.strftime('%d %b %y')
  end
end
