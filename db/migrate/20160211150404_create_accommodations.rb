class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :name
      t.text :adress
      t.integer :duration
      t.decimal :price
      t.integer :rating

      t.timestamps null: false
    end
  end
end
