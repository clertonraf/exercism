class AssemblyLine
  
  @@MINIMUM_PRODUCTION = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
      when 1..4 then (production_rate).to_f
      when 5..8 then (production_rate * 0.9).to_f
      when 9 then (production_rate * 0.8).to_f
      when 10 then (production_rate * 0.77).to_f
      else 0.0
    end
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end

  private

  def production_rate
    @@MINIMUM_PRODUCTION * @speed
  end
end
