class CreateDirectories < ActiveRecord::Migration[7.0]
  def change
    create_table :directories do |t|
      t.references :user, foreign_key: true, null: false

      t.string :name, null: false

      t.timestamps
    end
  end
end
