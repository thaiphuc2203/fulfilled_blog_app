# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.integer :parent_id
      t.string :title
      t.string :meta_title
      t.text :content

      t.timestamps
    end
  end
end
