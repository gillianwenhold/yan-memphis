class AddMoreLinkColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :link_2, :string
    add_column :resources, :link_text_2, :string
    add_column :resources, :link_3, :string
    add_column :resources, :link_text_3, :string
  end
end
