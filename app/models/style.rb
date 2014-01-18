class Style < ActiveRecord::Base
  has_many :elements
  validates :name, presence: true
  validates :font_size, format: { with: /(\d+[(px)|(em)])||/, message: "Font must be specified in px or em" }, allow_blank: true
  validates :text_color, format: { with: /(^[a-fA-F0-9]{6}$)/, message: "Please use hex without #" }, allow_blank: true
  validates :background_color, format: { with: /(^[a-fA-F0-9]{6}$)/, message: "Please use hex without #" }, allow_blank: true
  validates :border_color, format: { with: /(^[a-fA-F0-9]{6}$)/, message: "Please use hex or short hex format, without #" }, allow_blank: true
  validates :border_thickness, format: { with: /\d+{1,2}px/, message: "Please specify in px, maximum of 99px" }, allow_blank: true
end
