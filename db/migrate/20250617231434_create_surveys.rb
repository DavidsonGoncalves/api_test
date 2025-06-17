class CreateSurveys < ActiveRecord::Migration[8.0]
  def change
    create_table :surveys do |t|
      t.string :observation
      t.integer :rate
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
