class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string     :name,         null: false
      t.string     :residence
      t.integer    :gender_id
      t.text       :introductions
      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
