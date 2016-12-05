class ChangeLongitudeColumnToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :locations, :longitude, :decimal, { precision: 10, scale: 6 }
  end
end
