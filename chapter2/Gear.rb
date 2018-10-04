# coding: utf-8
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # タイヤはリムの周りを囲むので、直径を計算するためには2倍
    ratio * (rim + (tire * 2))
  end
end

# puts Gear.new(52, 11).ratio # -> 4.7272727272727275
# puts Gear.new(30, 27).ratio # -> 1.1111111111111112
puts Gear.new(52, 11, 25, 1.5).gear_inches
# -> 132.36363636363637
puts Gear.new(52, 11, 24, 1.25).gear_inches
# -> 125.27272727272728
