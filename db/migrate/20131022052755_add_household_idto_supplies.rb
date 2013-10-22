class AddHouseholdIdtoSupplies < ActiveRecord::Migration

  def change
    add_column :supplies,  :household_id, :integer
  end
end
