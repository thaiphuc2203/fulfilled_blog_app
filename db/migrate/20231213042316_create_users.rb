# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :role_id
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :bio
      t.datetime :last_login

      t.timestamps
    end
  end
end
