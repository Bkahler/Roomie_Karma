class Supply < ActiveRecord::Base
  attr_accessible :name, :stocked, :household_id, :member_id, :details
  belongs_to :household
  has_and_belongs_to_many :members

  validates :name, presence: true

  def create_supply(name,details,household_id)
    @name =name
    @details = details
    @household_id = household_id
    @supply = Supply.create(name:@name, details:@details,household_id:@household_id)
    @member_supply = MembersSupply.create(supply_id:@supply.id , member_id: Member.find_by_id(Member.offset(rand(Member.count)).first).id )
end

  def self.supply_instock(params)
      supply = Supply.find_by_id(params[:id])
      member_supply = MembersSupply.find_by_id(supply.id)
      supply.update_attributes(stocked: true)
      new_id = Member.find_by_id(Member.offset(rand(Member.count)).first).id
      member_supply.update_attributes(member_id: new_id)
  end

  def self.supply_outstock(params)
      @supply = Supply.find_by_id(params[:id])
      @supply.update_attributes(stocked: false)
      @member = @supply.members[0]
      # UserMailer.supply_buy(@member,@supply).deliver
    end


end
