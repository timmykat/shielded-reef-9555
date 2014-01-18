require 'test_helper'

class StyleTest < ActiveSupport::TestCase
  test "six digit hex is allowable as a color" do
    style = Style.new
    style.name = "Style Name"
    style.text_color = "ae1234"
    assert style.save, "Saved with six digit hex"
  end

  test "non-hex characters are not allowed" do
    style = Style.new
    style.name = "Style Name"
    style.text_color = "xy1234"
    assert !style.save, "Non-hex characters were allowed as color spec"
  end

  test "three digit hex is not allowed" do
    style = Style.new
    style.name = "Style Name"
    style.text_color = "fff"
    assert !style.save, "Saved with six digit hex"
  end
  
  test "style must have a name" do
    style = Style.new
    style.text_color = "fff"
    assert !style.save, "Style saved without a name"
  end
end
