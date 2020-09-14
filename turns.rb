require "./players"
require "./question"

class Turns < Players
  attr_accessor :current_player, :player1, :player2, :question_master

  def initialize(p1, p2)
    # @player1 = p1
    # @player2 = p2
    @current_player = p2
    @question_master = p1
  end
  
  def run
    question1 = Question.new
    solution = question1.generate_question(@question_master.name)
    answer = $stdin.gets.chomp.to_i
    puts answer
    puts solution
    check_answer(answer, solution)
    change_turn
  end

  def check_answer(answer, solution)
    if answer === solution
      puts "#{@question_master.name}: YES! You are correct."
    else
      @current_player.lives_count -= 1
      puts "#{@question_master.name}: Seriously, NO!"
    end
  end

  def status (p1, p2)
    while true
      puts "P1: #{p1.lives_count}/3 vs P2: #{p2.lives_count}/3\n----- NEW TURN -----"
      run
      if (p1.lives_count == 0 || p2.lives_count == 0)
        puts "----- GAME OVER -----\nGood bye!"
        return false
       end
    end
  end


  def change_turn
    temp = @current_player
    @current_player = @question_master
    @question_master = temp
  end


  # puts question1
  # def change_turn

  # def new_turn
  
  # end


end