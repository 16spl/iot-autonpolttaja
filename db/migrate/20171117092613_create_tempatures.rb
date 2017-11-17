class CreateTempatures < ActiveRecord::Migration[5.1]
  def change
    create_table :tempatures do |t|

      t.timestamps
    end
  end
end
