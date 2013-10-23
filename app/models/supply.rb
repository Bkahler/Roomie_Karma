class Supply < ActiveRecord::Base
  attr_accessible :name, :stocked, :household_id, :member_id
  belongs_to :household
  has_and_belongs_to_many :members

  validates :name, presence: true
end
