json.extract! recipe, :id, :name, :batch_size, :efficency, :style, :notes, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
