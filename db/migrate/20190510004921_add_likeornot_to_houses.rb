class AddLikeornotToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :likeornot, :string
  end
end
