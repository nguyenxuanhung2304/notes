# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  # rubocop:disable Metrics/MethodLength
  def change
    create_table :users, bulk: true do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## User information
      t.string :name, null: false
      t.string :phone_number, null: false

      t.timestamps null: false
    end

    change_table :users, bulk: true do
      add_index :users, :email,                unique: true
      add_index :users, :reset_password_token, unique: true
    end
  end
  # rubocop:enable Metrics/MethodLength
end
