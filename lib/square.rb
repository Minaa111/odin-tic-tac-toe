class Square
  attr_accessor :position, :choice

  def initialize(position)
    self.position = position
    self.choice = ''
  end

  def valid?
    choice == ''
  end
end
