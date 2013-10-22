class Member < ActiveRecord::Base
  attr_accessible :name, :email, :household_id

  belongs_to :household
  has_many :member_chores
  has_many :chores, through: :member_chores

  validates :name, presence: true
  validates :email, presence: true
  validates :household_id, presence: true

end