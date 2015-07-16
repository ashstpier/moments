class Card < ActiveRecord::Base

  def formatted_date
    self.date.strftime('%d %b %y')
  end
end
