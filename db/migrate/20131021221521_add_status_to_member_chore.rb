class AddStatusToMemberChore < ActiveRecord::Migration
  def change
    add_column :member_chores,  :complete, :boolean, default: false
  end
end
