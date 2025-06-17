json.extract! ticket, :id, :ticket_code, :user_name, :mail, :description, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
