class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :houses, :type, :typeofhouse
    rename_column :houses, :string, :sunlight
  end
end
