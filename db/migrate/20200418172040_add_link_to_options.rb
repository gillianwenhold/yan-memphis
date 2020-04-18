class AddLinkToOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :link, :string
  end
end
