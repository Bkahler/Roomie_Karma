require 'spec_helper'

describe Household do
  let(:household) {Household.create(username: "Testname", email: "test@test.com")}

  it 'should have a username' do
    household.should respond_to(:username)
    household.username.should == 'Testname'
  end

  it "should have an email" do
    household.should respond_to(:email)
    household.email.should =="test@test.com"
  end

end