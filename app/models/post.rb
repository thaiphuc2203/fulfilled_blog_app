# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, dependent: :destroy, through: :post_tags
  has_many :post_comments, dependent: :destroy
  has_many :post_categories, dependent: :destroy
  has_many :categories, dependent: :destroy, through: :post_categories
end
