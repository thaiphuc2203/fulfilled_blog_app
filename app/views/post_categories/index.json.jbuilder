# frozen_string_literal: true

json.array! @post_categories, partial: 'post_categories/post_category', as: :post_category
