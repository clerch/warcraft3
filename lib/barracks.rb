class Barracks
  attr_accessor :gold, :food, :lumber
  attr_reader :health_points

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      Footman.new
    else
      nil
   end
 end

  def can_train_footman?
    if gold >= 135 && food >= 2
      true
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      true
    end
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end
  
  def damage(damage_received)
    @health_points -= damage_received
  end

  def dead?
    health_points <= 0
  end

  def train_siege_engine
    if can_train_footman? == true
      @gold -= 200
      @food -= 3
      @lumber -= 60
      SiegeEngine.new
    else
      nil
   end
 end

  def can_train_siege_engine?
    if gold >= 200 && food >= 3 && lumber >= 60
      true
    end
  end



end

