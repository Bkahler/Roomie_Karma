class Supply < ActiveRecord::Base
  attr_accessible :name, :stocked, :household_id, :member_id, :details
  belongs_to :household
  has_and_belongs_to_many :members

  validates :name, presence: true

  def supply_instock

  end


end
