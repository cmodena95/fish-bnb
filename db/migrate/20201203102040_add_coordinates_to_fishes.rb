class AddCoordinatesToFishes < ActiveRecord::Migration[6.0]
  def change
    add_column :fishes, :latitude, :float
    add_column :fishes, :longitude, :float
  end
end
