require 'spec_helper'

describe Profile do

  before(:each) do
    @profile = Factory(:profile)
  end
  
  it " mass assigned et not mass assigned attributes" do
    should_not(allow_mass_assignment_of(:credentials))
    should_not(allow_mass_assignment_of(:salt))
    should(allow_mass_assignment_of(:email))
    should(allow_mass_assignment_of(:password))
    should(allow_mass_assignment_of(:password_confirmation))
  end

  it "validates presence of email" do
    should validate_presence_of(:email)   
  end
  
  it "validates uniqueness of email" do
    should validate_uniqueness_of(:email)   
  end
  
  it "validates presence of password" do
    should validate_presence_of(:password)   
  end
  
  it "validates confirmation of password" do
    profile = FactoryGirl.build(:unconfirmed_password)
    profile.valid?().should == false   
  end  
  
  it "is valid when passwords match" do
    profile = FactoryGirl.build(:confirmed_password)
    profile.valid?().should == true   
  end    
end
