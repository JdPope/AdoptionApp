json.extract! trainer, :id, :name, :bio, :available_on_weekends, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
