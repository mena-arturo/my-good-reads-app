# spec/models/myapp_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  # Data setup for a test user
  # The data defined here (up to line XX) is used
  # for all the tests in this file.

  # let(:account) defines the account variable
  # let(:country) defines the country variable
  # let(:state) defines the state variable
  
  let(:account) { 
    Account.create(name: 'Test Account')
  }
  
  let(:country) { 
    Country.create(name: 'Test Country')
  }

  let(:state) {
    State.create(name: 'Test State')
  }

  let(:user) {
    User.create(
      first_name: 'Test Name1',
      last_name: 'Test LastName1',
      email: 'test1@email.com',
      account: account,
      country: country,
      state: state,
      password: 'testpassword1'
    )
  }
  
  # Let's define a "describe block" for each method or set of behaviors we're testing
  describe 'validations' do
    it 'is valid when account and country and state are present' do
      expect(user).to be_valid
    end

    it 'is not valid without an account' do
      user.account = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a country' do
      user.country = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a state' do
      user.state = nil
      expect(user).to_not be_valid
    end
    
  end

end
