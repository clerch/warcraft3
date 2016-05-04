require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Unit do

  before :each do
    @unit = Unit.new(100, 0)
  end

  describe "#dead?" do
    it "It should be alive when health is positive." do
      expect(@unit).to receive(:health_points).and_return(10) #forces health_points to be 10
      expect(@unit.dead?).to be false 
    end
  end

  describe "#dead?" do
    it "It should be dead when health is negative." do
      expect(@unit).to receive(:health_points).and_return(-10) 
      expect(@unit.dead?).to be true
    end
  end



end
