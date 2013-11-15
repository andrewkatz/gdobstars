class AddNameToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.boolean :active, default: false
    end
  end
end
