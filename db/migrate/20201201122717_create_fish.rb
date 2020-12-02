class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fishes do |t|
      t.string :location
      t.string :name
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
