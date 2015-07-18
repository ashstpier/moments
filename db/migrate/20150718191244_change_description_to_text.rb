class ChangeDescriptionToText < ActiveRecord::Migration
  def change
    change_column :cards, :description,  :text
    change_column :cards, :date,  :date
  end
end
