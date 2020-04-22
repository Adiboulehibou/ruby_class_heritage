require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "----------------------------------------------------------"
puts "|       Bienvenue sur 'ILS VEULENT TOUS MA POO' !        |"
puts "|    Le but du jeu est d'être le dernier survivant !     |"
puts "----------------------------------------------------------"
puts ""
puts "##########################################################"
puts ""
puts "         Vaillant Champion, comment te nommes tu ?"
print ">"

user_name = gets.chomp
humanP1 = HumanPlayer.new("#{user_name}")

puts ""
puts "##########################################################"
puts ""
array_of_ennemies = []
puts "##########################################################"
puts "          Premier Combattant, entrez un pseudo :"
print ">"

challenger_name = gets.chomp
player1 = Player.new("#{challenger_name}")
array_of_ennemies << player1

puts "##########################################################"
puts "           Second Combattant, entrez un pseudo :"
print ">"

challenger_name = gets.chomp
player2 = Player.new("#{challenger_name}")
array_of_ennemies << player2

puts "##########################################################"
puts "            Voila l'état de chaque challenger "
puts "##########################################################"
puts ""
puts humanP1.show_state
puts ""
puts player1.show_state
puts ""
puts player2.show_state
puts ""
puts "##########################################################"
puts "                Que Le Combat Commence !!!"
puts ""
while humanP1.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
	
	puts "                Voici l'état des joueurs :"
	puts "----------------------------------------------------------"
	puts ""
	puts humanP1.show_state
	puts player1.show_state
	puts player2.show_state
	puts ""
	puts "----------------------------------------------------------"
	pause = gets.chomp
	puts "              Passons à la phase d'attaque :"
	puts ""
	puts "Quelle action veux-tu effectuer ?"
	puts ""
	puts "a - chercher une meilleure arme"
	puts "s - chercher à se soigner "
	puts ""
	puts "attaquer un joueur en vue :"
	puts "0 - #{array_of_ennemies[0].name} a #{array_of_ennemies[0].life_points} points de vie"
	puts "1 - #{array_of_ennemies[1].name} a #{array_of_ennemies[1].life_points} points de vie"
	puts ""
	puts "----------------------------------------------------------"

	
	user_choice = gets.chomp.to_s
	
	if user_choice == "a"
		humanP1.search_weapon
	elsif user_choice == "s"
		humanP1.search_health_pack
	else
		humanP1.attacks(array_of_ennemies[user_choice.to_i])
	end

	pause = gets.chomp

	puts "Les autres joueurs t'attaquent !"
	array_of_ennemies.each do |ennemie|
		if ennemie.life_points <= 0
			puts " #{ennemie.name} est DCD par concequent .... Paix à son âme"
		else
			ennemie.attacks(humanP1)
		end
	end

	pause = gets.chomp
	puts ""

end
puts ""
puts "##########################################################"
puts ""
puts "C'est déja terminé, la partie est finie"

if humanP1.life_points > 0 
	puts "Le vainqueur est .... (roulement de tambour) .... #{humanP1.name.upcase} !!!!!!"
	puts "Tu peux être fière, la machine n'est pas prète à prendre ta place"
else
	puts "Le vainqueur est .... (roulement de tambour) .... PAS TOI !!!!!!"
	puts "Loooooooooser ! Mais que tu es NUL !!!! Tu as perdu !!!!\n Si on compte sur toi pour battre la machine on vivra la fin du monde façon Terminator"
end

binding.pry