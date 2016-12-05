class AddLocationReferencesToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :location, foreign_key: true
  end
end
