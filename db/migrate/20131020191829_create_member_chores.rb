class CreateMemberChores < ActiveRecord::Migration
  def change
    create_table :member_chores do |t|
      t.references :member
      t.references :chore
      t.string :week

      t.timestamps
    end
  end
end
