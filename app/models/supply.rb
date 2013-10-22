class Supply < ActiveRecord::Base
  attr_accessible :name, :in_stock, :household_id
  belongs_to :household

  validates :name, presence: true
end
