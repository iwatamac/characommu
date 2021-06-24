class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def up
    change_column_null :messages, :character_id, true
  end

  def down
    change_column_null :messages, :character_id, false
  end
end
