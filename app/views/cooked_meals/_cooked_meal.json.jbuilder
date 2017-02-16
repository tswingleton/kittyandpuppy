json.extract! cooked_meal, :id, :Name, :Recipe, :created_at, :updated_at
json.url cooked_meal_url(cooked_meal, format: :json)