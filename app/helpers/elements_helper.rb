module ElementsHelper
  def select_style_options
    options = [["--Default style--", nil]]
    Style.all.each do |style|
      options << [style.name, style.id]
    end
    options
  end
end
