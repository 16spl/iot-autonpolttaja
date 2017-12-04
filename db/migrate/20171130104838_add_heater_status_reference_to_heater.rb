class AddHeaterStatusReferenceToHeater < ActiveRecord::Migration[5.1]
  def change
    add_reference :heater_statuses, :heater, foreign_key: true
  end
end
