require_relative 'board'
require_relative 'players'

class TicTacToe
  attr_accessor :board, :first_player, :second_player

  def initialize
    self.board = Board.new
    self.first_player = FirstPlayer.new
    self.second_player = SecondPlayer.new
  end

  def win?
    if (board.squares[0].choice == 'X' && board.squares[1].choice == 'X' && board.squares[2].choice == 'X') ||
       (board.squares[3].choice == 'X' && board.squares[4].choice == 'X' && board.squares[5].choice == 'X') ||
       (board.squares[6].choice == 'X' && board.squares[7].choice == 'X' && board.squares[8].choice == 'X') ||
       (board.squares[0].choice == 'X' && board.squares[3].choice == 'X' && board.squares[6].choice == 'X') ||
       (board.squares[1].choice == 'X' && board.squares[4].choice == 'X' && board.squares[7].choice == 'X') ||
       (board.squares[2].choice == 'X' && board.squares[5].choice == 'X' && board.squares[8].choice == 'X') ||
       (board.squares[0].choice == 'X' && board.squares[4].choice == 'X' && board.squares[8].choice == 'X') ||
       (board.squares[2].choice == 'X' && board.squares[4].choice == 'X' && board.squares[6].choice == 'X')
      'Player 1 Wins!'
    elsif (board.squares[0].choice == 'O' && board.squares[1].choice == 'O' && board.squares[2].choice == 'O') ||
          (board.squares[3].choice == 'O' && board.squares[4].choice == 'O' && board.squares[5].choice == 'O') ||
          (board.squares[6].choice == 'O' && board.squares[7].choice == 'O' && board.squares[8].choice == 'O') ||
          (board.squares[0].choice == 'O' && board.squares[3].choice == 'O' && board.squares[6].choice == 'O') ||
          (board.squares[1].choice == 'O' && board.squares[4].choice == 'O' && board.squares[7].choice == 'O') ||
          (board.squares[2].choice == 'O' && board.squares[5].choice == 'O' && board.squares[8].choice == 'O') ||
          (board.squares[0].choice == 'O' && board.squares[4].choice == 'O' && board.squares[8].choice == 'O') ||
          (board.squares[2].choice == 'O' && board.squares[4].choice == 'O' && board.squares[6].choice == 'O')
      'Player 2 Wins!'
    elsif board.full_board?
      'Draw!'
    end
  end

  def play
    loop do
      board.show_board

      loop do
        first_player_position = first_player.position

        if board.squares[first_player_position - 1].choice == ''
          board.squares[first_player_position - 1].choice = first_player.choice
          break
        else
          puts 'Enter a valid position, please.'
        end
      end

      puts '- - - - - - - - - - - - - - -'

      result = win?
      unless result.nil?
        board.show_board
        puts result
        break
      end

      board.show_board
      loop do
        second_player_position = second_player.position

        if board.squares[second_player_position - 1].choice == ''
          board.squares[second_player_position - 1].choice = second_player.choice
          break
        else
          puts 'Enter a valid position, please.'
        end
      end

      puts '- - - - - - - - - - - - - - -'

      result = win?
      unless result.nil?
        board.show_board
        puts result
        break
      end
    end
  end
end
