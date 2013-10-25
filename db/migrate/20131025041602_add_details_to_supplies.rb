class AddDetailsToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies,  :details, :text
  end
end
