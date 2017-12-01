class CreateInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :interests do |t|
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
