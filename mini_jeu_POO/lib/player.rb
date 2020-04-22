
class Player
  attr_accessor :name, :life_points

  def initialize(name_of_player)
    @name = name_of_player
    @life_points = 10

  end

  def show_state
    return "#{@name} a #{@life_points} points de vie"
  end

  def get_damage(damager)
    @life_points = @life_points - damager
    if @life_points <= 0 
      puts "Le joueur #{@name} a été tué"
    end

  end

  def attacks(player)
    puts "Le joueur #{@name} attaque le joueur #{player.name}"
    damage_to_player = compute_damage
    puts "Il lui inflige #{damage_to_player} points de dommages"
    player.get_damage(damage_to_player)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player

  attr_accessor :weapon_level

  def initialize(name_of_player)
    @life_points = 100
    @weapon_level = 1
    @name = name_of_player

    
  end

  def show_state
    return "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    @weapon_level_bis = rand(1..6)
    puts "Tu as trouvé une armes de niveau #{@weapon_level_bis}"
    if @weapon_level_bis > @weapon_level
      puts "WOOOOooooooooOOOOO, tu viens de decouvrir une arme légendaire d'un niveau supérieur"
      @weapon_level = @weapon_level_bis
    else
      puts "M@*#$... Pas de bole, elle n'est pas mieux que ton arme actuelle... tête de mort"
    end

  end

  def search_health_pack
    @health_pack = rand(1..6)
    if @health_pack == 1
      puts "tu viens de tomber dans un piège, tu es DEAD.... non, en fait il n'y avait rien"
    elsif @health_pack.between?(2, 5) #>= 2 && @health_pack <=5
      @life_points = @life_points + 50
      if @life_points > 100
        @life_points = 100
      end
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
    else
      @life_points = @life_points + 80
      if @life_points > 100
        @life_points = 100
      end
      puts "Waow, mais quel vénard, tu as trouvé un pack de +80 points de vie !"
    end
        
  end

end
