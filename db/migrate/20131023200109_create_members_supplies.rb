class CreateMembersSupplies < ActiveRecord::Migration
  def change
    create_table :members_supplies do |t|


      t.timestamps
    end
  end
end
