class Unit
attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
     if !(enemy.dead?) && !(self.dead?)
      if enemy.is_a? Barracks
        enemy.damage((attack_power/2).ceil)
      else
        enemy.damage(attack_power) 
      end
    end
  end


  def damage(damage_received)
    @health_points -= damage_received
  end

  def dead?
    health_points <= 0
  end
end
