class AddHouseholdIdToChore < ActiveRecord::Migration
  def change
    add_column :chores, :household_id, :integer
  end
end
