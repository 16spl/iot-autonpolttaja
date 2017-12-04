class AddHeaterTimesReferenceToHeater < ActiveRecord::Migration[5.1]
  def change
    add_reference :heating_times, :heater, foreign_key: true
  end
end
