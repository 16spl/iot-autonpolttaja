class CreateHeaters < ActiveRecord::Migration[5.1]
  def change
    create_table :heaters do |t|
      t.string :owner
      t.string :name

      t.timestamps
    end
  end
end
