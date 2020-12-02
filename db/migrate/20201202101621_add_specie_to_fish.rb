class AddSpecieToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :specie, :string
  end
end
