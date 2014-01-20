class AddColumnCssTagToElements < ActiveRecord::Migration
  def change
    add_column :elements, :css_tag, :string
  end
end
