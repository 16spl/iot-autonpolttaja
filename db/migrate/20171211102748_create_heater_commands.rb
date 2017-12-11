class CreateHeaterCommands < ActiveRecord::Migration[5.1]
  def change
    create_table :heater_commands do |t|
      t.string :command, :null => false
      t.datetime :heating
      t.timestamps
    end
    add_reference :heater_commands, :heater, foreign_key: true
  end
end
