module ApplicationHelper
  def custom_styles
    output = "<style>\n"
    Element.all.each do |element|
      if element.style
        output += "#{element.name} {\n"
        output += element.style.font.blank? ? '' : "  font-family: #{element.style.font};\n"
        output += element.style.font_size.blank? ? '' : "  font-size: #{element.style.font_size};\n"
        output += element.style.text_color.blank? ? '' : "  color: ##{element.style.text_color};\n"
        output += element.style.background_color.blank? ? '' : "  background-color: ##{element.style.background_color};\n"
        output += element.style.border_thickness.blank? ? '' : "  border: solid #{element.style.border_thickness} ##{element.style.border_color};\n"
    output += "}\n"
      end
    end
    output += "</style>\n"
    output.html_safe
  end
end
