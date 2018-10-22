# coding: utf-8
class Bicycle
  include Schedulable

  def lead_days
    1
  end
end

require 'date'
starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/010")

b = Bicycle.new
b.schedulable?(starting, ending)
