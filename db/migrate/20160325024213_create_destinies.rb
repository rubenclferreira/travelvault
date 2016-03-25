class CreateDestinies < ActiveRecord::Migration
  def change
    create_table :destinies do |t|
      t.string :location
      t.date :date
      t.string :airline

      t.timestamps null: false
    end
  end
end
