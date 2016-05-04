require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Unit do

  before :each do
    @attacker = Unit.new(100, 0)
    @defender = Unit.new(100, 0)
    @building = Barracks.new
  end

  describe "#attack!" do
    it "should not attack when dead" do
      expect(@attacker).to receive(:dead?).and_return(true)  # HP started at 100 but just got hit by 12 (see subject)
      expect(@attacker.attack!(@defender)).to be_falsey
    end
  
    it "should not attack a dead unit" do
      expect(@defender).to receive(:dead?).and_return(true) # HP started at 100 but just got hit by 12 (see subject)
      expect(@attacker.attack!(@defender)).to be_falsey
    end

    it "should not attack a dead building" do
      expect(@building).to receive(:dead?).and_return(true) # HP started at 100 but just got hit by 12 (see subject)
      expect(@attacker.attack!(@building)).to be_falsey
    end


  end
end
