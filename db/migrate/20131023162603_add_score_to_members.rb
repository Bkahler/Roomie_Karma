class AddScoreToMembers < ActiveRecord::Migration
  def change
    add_column :members,  :score, :integer, default: 0
  end
end
