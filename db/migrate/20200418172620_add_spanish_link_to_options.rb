class AddSpanishLinkToOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :link_es, :string
  end
end
