class MemberChoresController < ApplicationController

 def create
        @current_household.members.each do |x|
           if x.name ==params[:assigned_member]
              @id = x.id
            end
          end

        member = Member.find_by_id(@id)
        chore = Chore.find_by_name(params[:assigned_chore])
        week = params[:week]

          if member && chore
              MemberChore.create(:member_id=>member.id, :chore_id=>chore.id, :week=>week  )
              redirect_to household_path(@current_household.id)
          else
               flash[:errors] = "Enter one of the Members/Chores from your household's lists"
               redirect_to household_path(@current_household.id)
          end

    end

end