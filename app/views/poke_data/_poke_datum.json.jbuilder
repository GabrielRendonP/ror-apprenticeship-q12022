json.extract! poke_datum, :id, :name, :picture, :created_at, :updated_at
json.url poke_datum_url(poke_datum, format: :json)
