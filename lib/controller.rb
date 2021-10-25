require 'pry'
require_relative 'view'
require_relative 'gossip'

#défini comme étant le chef d'orchestre, il va contenir des appels au model Gossip et se finira avec un retour vers une view qui affiche quelquechose.

class Controller 

	attr_accessor :view

 def method_name

	@view = View.new	
 end
 
 def create_gossip

   params = Viwe.new.create_gossip_view  #récupère les infos de l'utilisateur, c'est a dire le contenu et l'auteur)
 	gossip = Gossip.new(params)
 	gossip.save
 	
 end

 def index_gossips
    gossip_array << view.index_gossips 
 end

 binding.pry
end