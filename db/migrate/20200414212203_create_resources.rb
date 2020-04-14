# frozen_string_literal: true

class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :image
      t.string :about
      t.text :details
      t.string :link
      t.string :link_text
      t.string :notes
      t.string :category
      t.boolean :published
      t.timestamps
    end
  end
end
