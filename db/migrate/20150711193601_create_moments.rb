class CreateMoments < ActiveRecord::Migration
  def change
    create_table :moments do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.timestamps null: false
    end
  end
end
