class RemoveLocationReferencesFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_reference :comments, :location, foreign_key: true
  end
end
