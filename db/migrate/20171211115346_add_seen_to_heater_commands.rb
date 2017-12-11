class AddSeenToHeaterCommands < ActiveRecord::Migration[5.1]
  def change
    add_column :heater_commands, :seen, :boolean
  end
end
