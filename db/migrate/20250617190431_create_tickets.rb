class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_code
      t.string :user_name
      t.string :mail
      t.string :desctiption

      t.timestamps
    end
  end
end
