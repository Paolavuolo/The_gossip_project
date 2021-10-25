require 'pry'
require_relative 'gossip'


class View

	attr_accessor  

  def create_gossip_view

 	puts "Identifiant utilisateur"
 	identifiant = gets.chomp
 	puts "Commentaire :"
 	commentaire = gets.chomp

 	return {author: identifiant, content: commentaire}
  end

  def index_gossips_view(gossips)
  
      all_gossips.each do |ligne|
        puts gossip_provisoire 
    end 
      
  end
end