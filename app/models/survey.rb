class Survey < ApplicationRecord
  belongs_to :ticket
  validates :ticket_id, uniqueness: {message: 'Ticket already has a survey.'}
end
