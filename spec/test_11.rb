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
      expect(@building.health_points).to eq(488) # HP started at 100 but just got hit by 12 (see subject)
    end
  end

  describe "#attack!" do
    it "should deal the appropriate (attack power based) damage to the Barrack unit" do
      @unit.attack!(@building)
      expect(@building.health_points).to eq(497)

      # Step 1 do an attack of a unit to the building

      # Step 2 check if the building got dammged the way you expect it
      # for this: .t eq()



    end
  end



end
