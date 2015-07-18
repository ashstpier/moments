class RemoveLatLng < ActiveRecord::Migration
  def change
    remove_column :cards, :lat, :float
    remove_column :cards, :lng, :float
  end
end
