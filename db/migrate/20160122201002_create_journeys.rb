class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
