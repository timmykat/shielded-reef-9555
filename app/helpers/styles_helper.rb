module StylesHelper
  def select_font_options
    options = [['--Please select--', ['', 'Default']]]
    fonts = {
      'Serif' => [
        "'Palatino Linotype', 'Book Antiqua', Palatino, serif",
        "'Times New Roman', Times, serif",
        "'Copperplate Gothic Light', Copperplate, serif",
         "Georgia, serif"
      ],
      'Sans-serif' => [
        "Arial, Helvetica, sans-serif",
        "Impact, Charcoal, sans-serif",
        "Tahoma, Geneva, sans-serif",
        "'Century Gothic', sans-serif",
        "'Lucida Sans Unicode', 'Lucida Grande', sans-serif",
        "'Arial Black', Gadget, sans-serif",
        "'Arial Narrow', sans-serif",
        "Verdana, Geneva, sans-serif",
        "'Trebuchet MS', Trebuchet, Helvetica, sans-serif"
      ],
      'Monospace' => ["'Courier New', Courier, monospace"]
    }
    fonts.each do |style, fonts|
      group = []
      group << style
      fontgroup = []
      fonts.each do |font|
        fontgroup << [font, font]
      end
      group << fontgroup
      options << group
    end
    options
  end
end
