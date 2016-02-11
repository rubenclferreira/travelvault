class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :location
      t.string :departure
      t.date :date
      t.string :airline

      t.timestamps null: false
    end
  end
end
