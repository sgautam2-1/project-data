# app/controllers/authors_controller.rb
class AuthorsController < ApplicationController
  def index
    @authors = Author.page(params[:page]).per(10)  # Paginate authors, 10 per page
  end

  def show
    @author = Author.find(params[:id])
  end
end
