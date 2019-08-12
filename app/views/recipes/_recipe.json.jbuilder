json.extract! recipe, :id, :name, :type, :author, :coauthor, :batch_size, :efficency, :style, :notes, :original_gravity, :final_gravity, :alcohol_by_volume, :ibu_estimate, :color_estimate, :carbonation, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
