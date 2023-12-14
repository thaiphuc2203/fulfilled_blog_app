# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :post_categories, dependent: :destroy
  has_many :posts, dependent: :destroy, through: :post_categories
end
