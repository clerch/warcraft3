require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @siege_engine2 = SiegeEngine.new
    @defender1 = Footman.new
    @building = Barracks.new
  end

  describe "#attack!" do

    it "should have double damage when attacking a Barracks" do
      expect(@siege_engine).to receive(:attack_power).and_return(50)
      expect(@building).to receive(:damage).with(100)
      @siege_engine.attack!(@building)
    end

     it "it should not attack a Footman" do
      @siege_engine.attack!(@defender1)
      expect(@defender1.health_points).to eq(60)
    end

    it "it should attack another SiegeEngine" do
      @siege_engine.attack!(@siege_engine2)
      expect(@siege_engine2.health_points).to eq(350)
    end
  end
end



