require_relative 'lib/player'





class Game
  attr_accessor :human_player, :enemies

  def initialize(name_of_player)
    @human_player = name_of_player
    @enemies = [player1, player2, player3, player4]

  end

  def kill_player(player)
    if player.life_points <=0
      @enemies.delete(player)
    end
  end

  def is_still_ongoing?
    if @human_player.life_points > 0 && @enemies.any?
      return true
    else
      return false
    end
  end

  def show_player
    @human_player.show_state
    @enemies.each do |enemie|
      enemie.show_state
    end
  end

  def menu
    puts "Quelle action veux-tu effectuer ?"
    puts ""
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner "
    puts ""
    puts "attaquer un joueur en vue :"
    @enemies.each_with_index do |enemie, n|
        kill_player(enemie)
        puts "#{n} - #{enemie.show_state}"
      end
    end
  end

  

  def 



end