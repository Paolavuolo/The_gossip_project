require 'pry'
require_relative 'controller'

#le routeur va proposer des possibilités a l'utilisateur, en fonction de ce que celui ci rentre, il redirige vers la bonne méthode du controller.
#ici il y aura trois choix possibles : créer un gossip, voir la liste complète des gossips ou supprimer un gossip.

class Routeur 

  def initialize
  	@controller = Controller.new
  end

  def perform
  	 puts "BIENVENUE DANS THE GOSSIP PROJECT"

      while true

  	      puts " Que voulez vous faire ?" 
  	      puts "1 : Créer un gossip"
          puts "2 : afficher tous les gossip"
          puts "3 : Supprimer un potin "
  	      puts "4 : quitter l'app"

  	      choix = gets.chomp.to_i #demande a l'utilisateur son choix 

         case choix #en fonction du choix 

            when 1
              puts "Tu as choisi de créer un gossip"
              @controller.create_gossip

            when 2
              puts "Voici la liste des gossip :"
              @controller.index_gossips

            when 3 
              puts "Quelle potin veux tu supprimer ? (indique le numéro)"
              i = gets.chomp.to_i
               all_gossip[i] == " "

            when 4
              puts "A bientôt !"
            break #fin de la boucle si l'utilisateur décide de quitter l'app

            else 
              puts "Ce choix n'existe pas, merci de réssayer" #si l'utilisateur entre une réponse imprevue il revient au début 
            end	
  	    end
    end
end