# frozen_string_literal: true

json.extract! post_comment, :id, :post_id, :parent_id, :published, :published_at, :content, :title, :created_at,
              :updated_at
json.url post_comment_url(post_comment, format: :json)
