# coding: utf-8
class Trip
  attr_reader :bicycles, :customers, :vehicle

  # # この mechanicc 引数はどんなクラスでも良い
  # def prepare(mechanic)
  #   mechanic.prepare_bicycles(bicycles)
  # end

  # def prepare(prepares)
  #   prepares.each {|preparer|
  #     case preparer
  #     when Mechanic
  #       prepare.prepare_bicycles(bicycles)
  #     when TripCoordinator
  #       prepare.buy_food(customers)
  #     when Driver
  #       prepare.gas_up(vehicle)
  #       prepare.fill_water_tank(vehicle)
  #     end
  #   }
  # end

  def prepare(prepares)
    prepares.each {|preparer|
      prepare.prepare_trip(self)}
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each {|bicycle|
      prepare_bicycle(bicycle)}
  end

  def prepare_bicycle(bicycle)
    puts bicycle
  end

  # def prepare_bicycles(bicycles)
  #   bicycles.each {|bicycle| prepare_bicycles(bicycle)}
  # end
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    puts "buy_food"
  end
end

class Driver
  def prepare_trip(trip)
    gas_up(trip.vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    puts "gas_up"
  end

  def fill_water_tank(vehicle)
    puts "fill_water_tank"
  end
end
