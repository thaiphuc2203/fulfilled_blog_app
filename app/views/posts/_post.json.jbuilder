# frozen_string_literal: true

json.extract! post, :id, :user_id, :description, :meta_title, :summary, :published, :published_at, :content,
              :created_at, :updated_at
json.url post_url(post, format: :json)
