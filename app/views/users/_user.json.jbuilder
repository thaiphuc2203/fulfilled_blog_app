# frozen_string_literal: true

json.extract! user, :id, :first_name, :last_name, :role_id, :phone_number, :email, :password, :bio, :last_login,
              :created_at, :updated_at
json.url user_url(user, format: :json)
