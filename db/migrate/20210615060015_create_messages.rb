class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string      :content,     null:false
      t.references  :character,   null:false, foreign_key:true
      t.references  :place,       null:false, foreign_key:true

      t.timestamps
    end
  end
end
