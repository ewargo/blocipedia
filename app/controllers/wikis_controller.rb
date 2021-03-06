  class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(params[:wiki])
    if @wiki.save
      flash[:notice] = "Wiki was saved."
      redirect_to @wiki
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end
  
  def edit
    @wiki = Wiki.find(params[:id])
    @collaborators = @wiki.collaborators
  end

  def update
    @wiki = Wiki.find(params[:id])
    if @wiki.update_attributes(params[:wiki])
      flash[:notice] = "Post was updated."
      redirect_to @wiki
    else
      flash[:error] = "There was an error saving your wiki. Please try again."
      render :new
    end
  end 
end
