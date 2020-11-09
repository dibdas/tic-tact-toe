#!/usr/bin/env ruby

class TicTacToe
  attr_reader :name
  attr_accessor :player_input

  def initialize(name)
    @name = name
    @player_input = nil
    @board_array = [['| 1 |', ' 2 |', ' 3 |'], ['| 4 |', ' 5 |', ' 6 |'], ['| 7 |', ' 8 |', ' 9 |']]
  end

  def turn
    puts "#{name} turn is this."
  end

  def validate_move
    puts "#{player_input} the move is invalid."
  end

  def winning_move
    puts "#{name} won the game."
  end

  def draw_move
    puts 'Nobody won the game. The game was draw.'
  end

  def display
    puts '-' * 13
    @board_array.each do |value|
      value.each do |i|
        print i
      end
      puts ''
      puts '+---+---+---+'
    end
  end

  def choice
    puts 'chose any value from the board'
    self.player_input = gets.chomp
  end
end

game_on = true

winner = true
while game_on
  game_on = false if winner

  print 'What is your name?'
  name = gets.chomp

  player_one = TicTacToe.new(name)

  player_one.turn
  player_one.choice
  player_one.validate_move
  player_one.display
  player_one.winning_move
  player_one.draw_move

  print 'What is your name?'
  name = gets.chomp

  player_two = TicTacToe.new(name)

  player_two.turn
  player_two.choice
  player_two.validate_move
  player_two.display
  player_two.winning_move
  player_two.draw_move
end
