class Chore < ActiveRecord::Base
  attr_accessible :name, :frequency, :household_id

  has_many :member_chores, dependent: :destroy
  has_many :members, through: :member_chores
  accepts_nested_attributes_for :member_chores

  validates :name, presence: true
  validates :household_id, presence: true


end
