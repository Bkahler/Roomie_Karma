class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|

      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token


      t.timestamps
    end
  end
end
