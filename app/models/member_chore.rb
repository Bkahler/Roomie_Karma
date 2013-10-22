class MemberChore < ActiveRecord::Base
  attr_accessible :member_id, :chore_id, :week
  belongs_to :member
  belongs_to :chore
end
