class AddUserIdToNomination < ActiveRecord::Migration
  def up
    add_column :nominations, :receiver_id, :integer
    add_column :nominations, :nominator_id, :integer
    add_column :nominations, :seconder_id, :integer
  end

  def down
    remove_column :nominations, :receiver_id
    remove_column :nominations, :nominator_id
    remove_column :nominations, :seconder_id
  end
end
