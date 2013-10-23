class DropMembersSupplies < ActiveRecord::Migration
  def change
    drop_table :members_supplies

  end
end
