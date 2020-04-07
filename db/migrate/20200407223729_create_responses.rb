# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.belongs_to :option
      t.belongs_to :poll
      t.timestamps
    end
  end
end
