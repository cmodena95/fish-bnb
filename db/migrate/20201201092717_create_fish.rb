class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :location
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
