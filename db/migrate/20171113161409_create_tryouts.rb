class CreateTryouts < ActiveRecord::Migration[5.1]
  def change
    create_table :tryouts do |t|
      t.string :label
      t.string :info
      t.string :registration
      t.date :start_date
      t.date :end_date
      t.integer :fee
      t.string :locality
      t.string :region
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
