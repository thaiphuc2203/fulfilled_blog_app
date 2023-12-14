# frozen_string_literal: true

json.extract! category, :id, :parent_id, :title, :meta_title, :content, :created_at, :updated_at
json.url category_url(category, format: :json)
