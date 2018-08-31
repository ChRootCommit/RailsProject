class UtilisateursController < ApplicationController
  def new
  end
 
  def show
    @utilisateur = Utilisateur.find(1) #ou find(params[:id])
  end
end
