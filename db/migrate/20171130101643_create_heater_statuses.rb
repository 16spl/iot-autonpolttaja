class CreateHeaterStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :heater_statuses do |t|
      t.float :tempature
      t.string :status
      t.datetime :last_seen

      t.timestamps
    end
  end
end
