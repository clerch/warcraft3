require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Barracks do

  before :each do
    @building = Barracks.new
  end

  it "should have lumber of 500" do 
    expect(@building.lumber).to eq(500)

  end
end
