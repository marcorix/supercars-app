class RemoveImageUrlFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :image_url
  end
end
