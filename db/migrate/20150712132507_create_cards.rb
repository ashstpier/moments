class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :location
      t.string :description
      t.datetime :date
      t.timestamps null: false
    end
  end
end
