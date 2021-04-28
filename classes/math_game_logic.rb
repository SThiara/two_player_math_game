class Math_Game_Logic
  attr_accessor :num1, :num2

  def initialize
    @num1 = 0
    @num2 = 0
  end

  def randomize
    self.num1 = rand(1..20)
    self.num2 = rand(1..20)
  end

  def sum
    self.num1 + self.num2
  end
end