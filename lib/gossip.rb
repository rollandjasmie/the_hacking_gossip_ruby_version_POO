class Gossip
	attr_accessor :author, :content, :line
	def initialize(author,content)
		@content = content
		@author = author
	end
	def save 
		CSV.open("db/gossip.csv", "a+") do |csv|
				csv << [@author,@content]
		end
	end
	def self.all
		all_gossips = []
		@line = CSV.read("db/gossip.csv")
		@line.length.times do |i|
			@line[i].length-1.times do |j|
				gossip_provisoire = Gossip.new(@line[i][j],@line[i][j+1])
				all_gossips << gossip_provisoire
			end
		end
		return all_gossips,@line
	end
	def self.destroy(index_of_potin)
		potins_delete = @line.delete_at(index_of_potin-1)	
		CSV.open("db/gossip.csv", "w") do |csv|		
			@line.length.times do |i|
				csv << @line[i]
			end
		end
		return potins_delete
	end
end