class ChangeSeenToNotNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :heater_commands, :seen, false, false
  end
end
