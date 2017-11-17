class TempToTempature < ActiveRecord::Migration[5.1]
  def change
      add_column :tempatures, :temp, :float
  end
end
