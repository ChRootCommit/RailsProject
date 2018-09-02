class UtilisateursController < ApplicationController
  def new
    @utilisateur = Utilisateur.new
  end
 
  def show
    @utilisateur = Utilisateur.find(1) #ou find(params[:id])
  end

  def create
    
    @utilisateur = Utilisateur.new(utilisateur_params)
    if @utilisateur.save
      #sauvegarde confirme
      flash[:success] = "Bienvenue"
      redirect_to @utilisateur
    else
      render "new"
    end

  end

  private
    def utilisateur_params
      params.require(:utilisateur).permit(:nom, :email, :password, :password_confirmation)
    end
end
