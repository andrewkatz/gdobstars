class AddTicksAndStarsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :stars, default: 0
      t.integer :ticks, default: 0
    end
  end
end
