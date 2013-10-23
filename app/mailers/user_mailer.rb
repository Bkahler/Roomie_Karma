class UserMailer < ActionMailer::Base
  default :from=> "bkahler3@gmail.com"


  def welcome_email(user)
    @user = user
    @url =  'http://localhost:3000/sessions/new'
    mail(:to=> @user.email, :subject=> "Welcome to Roomie Karma")
  end

  def supply_buy(user,supply)
    @user = user
    @supply = supply
    mail(:to=> @user.email, :subject=> "Time to Buy House supplies")
  end
end
