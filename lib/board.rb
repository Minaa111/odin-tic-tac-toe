require_relative 'square'

class Board
  attr_accessor :squares

  def initialize
    self.squares = [
      Square.new(1),
      Square.new(2),
      Square.new(3),
      Square.new(4),
      Square.new(5),
      Square.new(6),
      Square.new(7),
      Square.new(8),
      Square.new(9)
    ]
  end

  def show_board
    squares.each do |square|
      if square.choice == ''
        if square.position == 2 || square.position == 5 || square.position == 8
          print "| #{square.position} |"
        else
          print " #{square.position} "
        end
      else
        if square.position == 2 || square.position == 5 || square.position == 8
          print "| #{square.choice} |"
        else
          print " #{square.choice} "
        end
      end

      puts "\n---+---+---" if square.position == 3 || square.position == 6
    end

    puts
  end

  def full_board?
    if (squares[0].choice == 'X' || squares[0].choice == 'O') &&
       (squares[1].choice == 'X' || squares[1].choice == 'O') &&
       (squares[2].choice == 'X' || squares[2].choice == 'O') &&
       (squares[3].choice == 'X' || squares[3].choice == 'O') &&
       (squares[4].choice == 'X' || squares[4].choice == 'O') &&
       (squares[5].choice == 'X' || squares[5].choice == 'O') &&
       (squares[6].choice == 'X' || squares[6].choice == 'O') &&
       (squares[7].choice == 'X' || squares[7].choice == 'O') &&
       (squares[8].choice == 'X' || squares[8].choice == 'O')
      true
    end
  end
end
