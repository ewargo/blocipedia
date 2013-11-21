class CollaboratorsController < ApplicationController

  def index
    @colloborator = Collaborator.find(params[:id])
    @users = User.all
    @wiki = Wiki.find(params[:wiki_id])  
  end

  def create
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = @wiki.collaborators.build(params[:collaborator])
    
    if @collaborator.save
      flash[:notice] = "Successfully created collaborator."
    else
      flash[:notice] = "There was an error."
    end

    redirect_to @wiki
  end

  def show
    @collaborators = Collaborator.find(params[:id])
  end

  def new
    @users = User.all
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.new
  end

  def destroy
    @collaborator = Collaborator.find(params[:id])
    @users = User.all
    @wiki = Wiki.find(params[:wiki_id])
    
    if @collaborator.destroy
      flash[:notice] = "Collaborator was successfully removed."
      redirect_to @wiki
    else
      flash[:notice] = "Collaborator could not be removed."
    end

    

  end

end
