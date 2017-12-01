class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.string :location
      t.string :hunger_rating

      t.timestamps
    end
  end
end
