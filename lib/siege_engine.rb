# http://classic.battle.net/war3/human/units/footman.shtml

class SiegeEngine < Unit

  attr_reader :health_points, :attack_power

  def initialize
    super(400, 50)
  end


  def attack!(enemy)
    if !(enemy.dead?) && !(self.dead?)
      if enemy.is_a? SiegeEngine
        super
      elsif enemy.is_a? Barracks
        enemy.damage(attack_power * 2)
      end
    end
  end

end

