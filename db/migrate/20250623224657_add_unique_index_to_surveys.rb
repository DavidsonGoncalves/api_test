class AddUniqueIndexToSurveys < ActiveRecord::Migration[8.0]
  def change
    remove_index :surveys, :ticket_id if index_exists?(:surveys, :ticket_id)
    add_index :surveys, :ticket_id, unique: true
  end
end
