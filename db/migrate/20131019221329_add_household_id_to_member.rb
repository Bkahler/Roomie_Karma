class AddHouseholdIdToMember < ActiveRecord::Migration
  def change
    add_column :members, :household_id, :integer
  end
end
