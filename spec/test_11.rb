require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Barracks do

  before :each do
    @unit = Unit.new(100, 6)
    @building = Barracks.new

  end

  describe "#damage" do
    it "should reduce the Barrack's health_points by the attack_power specified" do
      @building.damage(12)
      expect(@building.health_points).to eq(488) 
    end
  end

  describe "#attack!" do
    it "should deal the appropriate (attack power based) damage to the Barrack unit" do
      @unit.attack!(@building)
      expect(@building.health_points).to eq(497)
    end
  end



end
