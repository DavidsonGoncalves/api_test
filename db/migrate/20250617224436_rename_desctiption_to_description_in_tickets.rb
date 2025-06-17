class RenameDesctiptionToDescriptionInTickets < ActiveRecord::Migration[8.0]
  def change
    rename_column :tickets, :desctiption, :description
  end
end
