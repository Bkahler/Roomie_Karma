class RemoveScoreFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :score
  end
end
