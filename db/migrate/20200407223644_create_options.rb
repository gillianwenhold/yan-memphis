# frozen_string_literal: true

class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.belongs_to :poll
      t.timestamps
    end
  end
end
