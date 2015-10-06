json.array!(@cupnoodles) do |cupnoodle|
  json.extract! cupnoodle, :name, :company, :comment, :rank
  json.url cupnoodle_url(cupnoodle, format: :json)
end