json.array!(@profiles) do |profile|
  json.extract! profile, :first_name, :last_name, :description, :height, :weight, :eyes_color, :hair_color, :morphology, :hobbies, :looking_for, :birth_date, :style, :life_style, :ethny, :alcool_level, :smoker_level
  json.url profile_url(profile, format: :json)
end
