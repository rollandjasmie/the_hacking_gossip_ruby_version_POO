require_relative 'controller'
class	Router
	attr_accessor :controller
	def initialize
		@controller = Controller.new
	end
	def perform
		puts "BIENVENUE DANS THE GOSSIP PROJECT"
		a = 0
		while true
			puts "="*40
			puts "1.Créer un gossip\n2.Afficher tous les potins\n3.Supprimer un potins\n4.Quitter l'app"
			print "Que veut tu faire > "
			choise = gets.chomp.to_i
			puts "="*40
			case choise
			when 1
				puts "Tu as choisi de créer un gossip\n" 
        @controller.create_gossip
      when 2
      	puts "Affichage de tous les potins\n"
      	a = @controller.index_gossips
      when 3
      	if a == 0
      			puts "\nEntrer d'abord des potins et(ou) afficher les tous\npour savoir leurs numéros"
      	else
      		a = @controller.index_gossips
      		if a == 0
      			puts "\nEntrer d'abord des potins et(ou) afficher les tous\npour savoir leurs numéros"
      		else
		      	while true
		      		puts "0-Retour au menu principale"
			      	puts "Quelle potins veut tu supprimer parmis"
			      	puts "la liste de tous les potins ?"
			      	print "Enter choise >"
			      	choise1 = gets.chomp.to_i
			      	puts "="*40
			      	case choise1
				      	when 0
				      		break
				      	when 1..a
				      		@controller.destroy(choise1)
				      		break
				      	else
				      		puts "Numero de potins inconue ou valeurs invalide !!\n"
				      end
			    	end
			    end
		    end

			when 4
				puts "À bientôt !"
        break
			else
				puts "\nCe choix n'existe pas, merci de ressayer"
			end
		end
	end
end