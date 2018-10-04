# coding: utf-8
class ObscuringReferences
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def diameters
    # 9はリム、1はタイヤ
    data.collect {|cell|
      cell[0] + (cell[1] * 2)}
  end
  # ...インデックスで配列の値を参照するメソッドがたくさん
end
