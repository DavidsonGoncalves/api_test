class ChangeTicketCodeFromIntegerToStringInTickets < ActiveRecord::Migration[8.0]
  def change
     change_column :tickets, :ticket_code, :string
  end
end
