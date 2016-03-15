class CreateVisitedPlaces < ActiveRecord::Migration
  def change
    create_table :visited_places do |t|
      t.string :Place
      t.decimal :Price

      t.timestamps null: false
    end
  end
end
