class CreatePlaceCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :place_characters do |t|
      t.references  :place,     null: false, foreign_key: true
      t.references  :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
