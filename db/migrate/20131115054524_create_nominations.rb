class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.boolean :active, default: true
      t.string :reason
      t.string :action

      t.timestamps
    end
  end
end
