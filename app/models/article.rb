class Article < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "300x300>", :medium => "200x200>", :small => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :title, presence: true, :length => { maximum: 100 }
  validates :body, presence: true, :length => { minimum: 100 }
end
