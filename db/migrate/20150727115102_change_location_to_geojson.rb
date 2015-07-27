class ChangeLocationToGeojson < ActiveRecord::Migration
  def change
    remove_column :locations, :lat, :float
    remove_column :locations, :lng, :float
    rename_column :locations, :name, :geojson
    change_column :locations, :geojson, :text
  end
end
