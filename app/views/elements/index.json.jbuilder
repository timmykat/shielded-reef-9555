json.array!(@elements) do |element|
  json.extract! element, :id, :name, :css_tag, :style_id
  json.url element_url(element, format: :json)
end
