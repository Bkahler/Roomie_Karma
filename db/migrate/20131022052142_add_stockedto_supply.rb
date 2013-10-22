class AddStockedtoSupply < ActiveRecord::Migration
def change
    add_column :supplies,  :stocked, :boolean, default: true
  end
end
