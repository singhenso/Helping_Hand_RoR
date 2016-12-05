class AddGmapFieldToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :gmaps, :boolean
  end
end
