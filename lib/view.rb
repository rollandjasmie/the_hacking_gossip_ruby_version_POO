require_relative 'gossip'
class View
	def create_gossip
		params = {}
		puts "Entrer le nom de l'auteur"
		print "> "
		params[:author] = gets.chomp
		puts "Entrer le contenu de votre potins"
		print "> "
		params[:content] = gets.chomp
		return params
	end
	#:author, :content
	def index_gossips(gossips)
		i=1
		gossips.each do |value|
			puts "#{i})Auteur : #{value.author}"
			puts "  Contenue : #{value.content}"
			i+=1
		end
	end
	def potins_delete(potins)
		puts "="*40
		puts "#{potins[0]} => #{potins[1]}"
		puts "Ce potins a été bien supprimé"
	end
end