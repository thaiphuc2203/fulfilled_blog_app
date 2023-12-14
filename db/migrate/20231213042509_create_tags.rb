# frozen_string_literal: true

class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :title
      t.string :meta_title
      t.string :content

      t.timestamps
    end
  end
end