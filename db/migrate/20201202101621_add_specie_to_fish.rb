class AddSpecieToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fishes, :specie, :string
  end
end
