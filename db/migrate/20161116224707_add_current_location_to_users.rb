class AddCurrentLocationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :current_city, :string
    add_column :users, :current_state, :string
    add_column :users, :current_country, :string
  end
end
