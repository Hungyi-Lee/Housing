class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :user_id
      t.integer :size
      t.integer :built
      t.integer :numberofparking
      t.integer :numberofstorage
      t.integer :numberofwindow
      t.integer :numberofgate
      t.string :descripofstorage
      t.string :sizeofparking
      t.string :typeofparking
      t.string :type
      t.string :address
      t.string :powervalue
      t.string :string #sunlight
      t.string :balcony
      t.string :road
      t.string :cooker
      t.string :floor #樓層
      t.string :floormaterial
      t.string :typeofbuilding
      t.string :housestatus
      t.text :neighboar
      t.text :link
      t.text :clozet
      t.text :layout
      t.text :supplementary
      t.float :bed
      t.float :bath
      t.float :price
      t.float :pricesqft
      t.float :hoa
      t.float :latitude
      t.float :longitude
      t.boolean :bus
      t.boolean :showerhead
      t.boolean :diningbar
      t.boolean :drain
      t.boolean :elevator
      t.boolean :commonplace
      t.boolean :packagereceiver
      t.boolean :gym
      t.boolean :checked

      t.timestamps
    end
  end
end
