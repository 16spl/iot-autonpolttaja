class CreateHeatingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :heating_times do |t|
      t.datetime :done_time

      t.timestamps
    end
  end
end
