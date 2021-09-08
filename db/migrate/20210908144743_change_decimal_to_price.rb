class ChangeDecimalToPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :skates, :price, :float
  end
end
