class AddTableMembersSupplies < ActiveRecord::Migration
 def change
    create_table :members_supplies do |t|
        t.belongs_to :member
        t.belongs_to :supply

      t.timestamps
    end
  end
end
