# frozen_string_literal: true

class CreatePostComments < ActiveRecord::Migration[7.1]
  def change
    create_table :post_comments do |t|
      t.references :post, null: false, foreign_key: true
      t.integer :parent_id
      t.boolean :published
      t.datetime :published_at
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
