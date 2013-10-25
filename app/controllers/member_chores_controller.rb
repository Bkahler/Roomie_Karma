class MemberChoresController < ApplicationController

 def create
        @current_household.members.each do |x|
           if x.name ==params[:assigned_member]
              @id = x.id
            end
          end

        member = Member.find_by_id(@id)
        chore = Chore.find_by_name(params[:assigned_chore].downcase)
        week = params[:week]

          if member && chore
              MemberChore.create(:member_id=>member.id, :chore_id=>chore.id, :week=>week  )
              redirect_to household_path(@current_household.id)
          else
               flash[:errors] = "Enter one of the Members/Chores from your household's lists"
               redirect_to household_path(@current_household.id)
          end

    end

    def complete
      @member_chores= MemberChore.find_by_id(params[:id])
      member_id = @member_chores.member.id
      @member_chores.update_attributes(complete: true)
      member_score = Member.find_by_id(member_id)
      member_score.score +=1
      member_score.save
      redirect_to household_path(@current_household.id)
    end

    def incomplete
      @member_chores= MemberChore.find_by_id(params[:id])
      member_id = @member_chores.member.id
      @member_chores.update_attributes(complete: false)
      member_score = Member.find_by_id(member_id)
      member_score.score -=1
      member_score.save
      redirect_to household_path(@current_household.id)
    end

    def reset
      @current_household.members.each do |x|
        x.member_chores.delete_all
       end
       redirect_to household_path(@current_household.id)
    end

end