# app/controllers/books_controller.rb
class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(10)  # Paginate books, 10 per page
  end

  def show
    @book = Book.find(params[:id])
  end
end
