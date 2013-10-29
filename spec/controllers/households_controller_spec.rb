require 'spec_helper'

describe HouseholdsController do

  it 'should render the index' do
    get 'index'
    response.should be_success
  end

  it 'should render new view page ' do
    get 'new'
    response.should be_success
  end


end