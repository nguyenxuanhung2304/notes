class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true, null: false
      t.references :directory, foreign_key: true

      t.string :name, null: false
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
