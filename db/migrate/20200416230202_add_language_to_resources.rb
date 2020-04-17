class AddLanguageToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :language, :string, default: "english"
  end
end
