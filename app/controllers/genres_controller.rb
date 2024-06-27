class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.includes(:books).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Genre not found."
    redirect_to genres_path
  end

  # Other actions like new, create, edit, update, destroy
end
