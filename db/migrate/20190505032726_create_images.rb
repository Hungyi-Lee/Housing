class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :house_id
      t.text :note
      t.text :imageurl

      t.timestamps
    end
  end
end
