json.extract! dog, :id, :name, :age, :size, :kids_compatible, :pets_compatible, :image_url, :fixed, :vaccinated, :bio, :created_at, :updated_at
json.url dog_url(dog, format: :json)
