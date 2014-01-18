json.array!(@elements) do |element|
  json.extract! element, :id, :name, :style_id
  json.url element_url(element, format: :json)
end
