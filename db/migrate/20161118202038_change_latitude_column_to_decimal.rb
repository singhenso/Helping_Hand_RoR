class ChangeLatitudeColumnToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :locations, :latitude, :decimal, { precision: 10, scale: 6 }
  end
end
