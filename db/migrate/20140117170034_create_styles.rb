class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :font
      t.string :font_size
      t.string :text_color
      t.string :background_color
      t.string :border_color
      t.string :border_thickness

      t.timestamps
    end
  end
end
