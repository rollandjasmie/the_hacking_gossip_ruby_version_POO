require_relative 'view'
require_relative 'gossip'
class Controller
	attr_accessor :gossip, :view
	def initialize
		@view = View.new
	end
	def create_gossip
		params = @view.create_gossip#une methode dans le view qui a le meme nom
		@gossip = Gossip.new(params[:author],params[:content])
		gossip.save
	end
	def index_gossips
		potins,ligne = Gossip.all
		@view.index_gossips(potins)
		return ligne.length
	end
	def destroy(index_of_potin)
		del_potins = Gossip.destroy(index_of_potin)
		@view.potins_delete(del_potins)
	end
end