class AddMarkerIconToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :marker_icon, :string
  end
end
