class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :website
      t.string :logo
      t.string :level
      t.boolean :indoor
      t.string :season_start
      t.string :season_end

      t.timestamps
    end
  end
end
