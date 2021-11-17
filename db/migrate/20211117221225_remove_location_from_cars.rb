class RemoveLocationFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :location
  end
end
