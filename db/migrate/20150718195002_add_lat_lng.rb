class AddLatLng < ActiveRecord::Migration
  def change
    remove_column :cards, :location
    add_column :cards, :lat, :float
    add_column :cards, :lng, :float
  end
end
