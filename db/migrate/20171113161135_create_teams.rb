class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :website
      t.string :logo
      t.string :address_1
      t.string :address_2
      t.string :locality
      t.string :region
      t.string :zip
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
