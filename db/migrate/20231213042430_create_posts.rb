# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :description
      t.string :meta_title
      t.string :summary
      t.boolean :published
      t.datetime :published_at
      t.text :content

      t.timestamps
    end
  end
end
