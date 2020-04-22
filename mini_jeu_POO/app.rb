require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "##########################################################"
puts "                Bienvenue Challengers !!!"
puts "##########################################################"
puts "          Premier Combattant, entrez un pseudo :"
print ">"
challenger_name = gets.chomp
player1 = Player.new("#{challenger_name}")
puts "##########################################################"
puts "           Second Combattant, entrez un pseudo :"
print ">"
challenger_name = gets.chomp
player2 = Player.new("#{challenger_name}")
puts "##########################################################"
puts "            Voila l'état de chaque challenger "
puts "##########################################################"
puts ""
puts player1.show_state
puts ""
puts player2.show_state
puts ""
puts "##########################################################"
puts "                Que Le Combat Commence !!!"
puts ""
while player1.life_points > 0 && player2.life_points > 0
	
	puts "              Voici l'état de nos joueurs :"
	puts "----------------------------------------------------------"
	puts ""
	puts player1.show_state
	puts player2.show_state
	puts ""
	puts "----------------------------------------------------------"
	puts "              Passons à la phase d'attaque :"
	puts ""
	player1.attacks(player2)

	if player2.life_points <= 0
		break
	end

	player2.attacks(player1)
	puts ""

end
puts ""
puts "##########################################################"
puts ""

if player1.life_points > 0
	puts "Le vainqueur est .... (roulement de tambour) .... #{player1.name.upcase} !!!!!!"
else
	puts "Le vainqueur est .... (roulement de tambour) .... #{player2.name.upcase} !!!!!!"
end



binding.pry