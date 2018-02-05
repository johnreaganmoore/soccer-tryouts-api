class AddLatitudeAndLongitudeToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :latitude, :float
    add_column :teams, :longitude, :float
  end
end
