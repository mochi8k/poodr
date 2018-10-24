class Bicycle
  attr_reader :size, :parts

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end
end


require 'forwardable'
class Parts
  extend Forwardable
  def_delegators :@parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select {|part| part.needs_spare}
  end
end

road_config =
  [['chain', '10-speed'],
   ['tire_size', '23'],
   ['tape_color', 'red']]


moutain_config =
  [['chain', '10-speed'],
   ['tire_size', '21'],
   ['front_shock', 'Maintou', false],
   ['rear_shock', 'Fox']]


road_bike = Bicycle.new(
  size: 'L',,
  parts: PartsFactory.build(road_config)
)

moutain_bike = Bicycle.new(
  size: 'L',
  parts: PartsFactory.build(moutain_config)
)
