class MembersSupply < ActiveRecord::Base
  attr_accessible :member_id, :supply_id

  belongs_to :member
  belongs_to :supply
end
