class AddImageToCard < ActiveRecord::Migration
  def change
    add_column :cards, :cover_image, :string
  end
end
