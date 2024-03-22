class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.references :note, null: false, foreign_key: true

      t.datetime :notification_at, null: false

      t.timestamps
    end
  end
end
