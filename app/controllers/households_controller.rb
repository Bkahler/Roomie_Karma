class HouseholdsController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create, :index]

    def index
    end

    def new
      @household = Household.new
    end

    def create
      @household= Household.create(params[:household])

          if @household.errors.empty?

            UserMailer.welcome_email(@household).deliver
            sign_in(@household)
          redirect_to household_path(@household)
          else
         flash[:errors] = "Please enter a name for your household !"
          render :new
        end
    end

    def show
      @household = Household.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
