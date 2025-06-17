json.extract! survey, :id, :observation, :rate, :ticket_id, :created_at, :updated_at
json.url survey_url(survey, format: :json)
