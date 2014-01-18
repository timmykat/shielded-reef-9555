json.array!(@styles) do |style|
  json.extract! style, :id,  :font, :font_size, :text_color, :text_size, :border_color, :border_thickness
  json.url style_url(style, format: :json)
end
