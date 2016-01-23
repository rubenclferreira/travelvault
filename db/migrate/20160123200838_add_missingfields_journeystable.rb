class AddMissingfieldsJourneystable < ActiveRecord::Migration
  def change
  	add_column :journeys, :origin, :string
  	add_column :journeys, :destiny, :string
  	add_column :journeys, :total_expense, :decimal
  	add_column :journeys, :total_distance, :decimal
  end
end
