class AddMemberIdToSupplyAgain < ActiveRecord::Migration
    def change
    add_column :supplies,  :member_id, :integer
  end
end
