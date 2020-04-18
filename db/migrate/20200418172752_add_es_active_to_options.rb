class AddEsActiveToOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :es_active, :boolean
  end
end
