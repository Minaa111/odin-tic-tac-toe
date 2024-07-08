require_relative 'board'

class Player
  attr_accessor :choices

  def initialize
    self.choices = ['X', 'O']
  end

  def position
    loop do
      print 'Enter a position: '
      position = gets.chomp

      if position.match?(/^\d+$/) && (1..9).include?(position.to_i)
        return Integer(position)
      else
        puts 'Enter a valid position, please.'
      end
    end
  end
end

class FirstPlayer < Player
  attr_accessor :choice

  def initialize
    super
    self.choice = choices[0]
  end

  def position
    loop do
      print 'Enter a position, Player 1: '
      position = gets.chomp

      if position.match?(/^\d+$/) && (1..9).include?(position.to_i)
        return Integer(position)
      else
        puts 'Enter a valid position, please.'
      end
    end
  end
end

class SecondPlayer < Player
  attr_accessor :choice

  def initialize
    super
    self.choice = choices[1]
  end

  def position
    loop do
      print 'Enter a position, Player 2: '
      position = gets.chomp

      if position.match?(/^\d+$/) && (1..9).include?(position.to_i)
        return Integer(position)
      else
        puts 'Enter a valid position, please.'
      end
    end
  end
end
