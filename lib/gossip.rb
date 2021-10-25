require 'pry'
require 'csv'

#le mode Gossip va permettre de créer des instances qui seront des potins, de gossip. le model aura aussi pour rôle d'intéragir avec les données

class Gossip
   
   attr_reader :author, :content
    
    #on va créer un potin 

    def initialize (author, content) 
	@content = content 
	@author = author
    end

    #méthode save pour faire apparaitre les données dans le csv 

    def save

    	CSV.open("db/gossip.csv","a+") do |csv| #a+ permet d'ajouter un élément au ficher 
    		csv << ["author","content"] #on créer les deux catégories
    		csv << [@author,@content] #on récupère les données 
    	end
    end

    def self.all

      all_gossips = Array.new

      CSV.each do |ligne|
         gossip_provisoire = Gossip.new(author, content) #permet de créer un objet gossip
         all_gossips << gossip_provisoire #permet de rajouter le gossip dans le tableau 
      end

      return all_gossips 
       
    end
end