class AddProfileIdToInterests < ActiveRecord::Migration[5.1]
  def change
    add_column :interests, :profile_id, :integer
  end
end
