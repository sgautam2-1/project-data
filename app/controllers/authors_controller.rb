class AuthorsController < ApplicationController
  def index
    @genres = Genre.all  # Fetch all genres for the dropdown

    # Initialize authors to an ActiveRecord::Relation so that we can chain methods
    authors = Author.includes(:books).order(:name)

    # Filter authors based on search query and genre filter
    if params[:search].present?
      authors = authors.where("name LIKE ?", "%#{params[:search]}%")
    end

    if params[:genre_id].present?
      authors = authors.joins(:books).where(books: { genre_id: params[:genre_id] })
    end

    @authors = authors.distinct.page(params[:page]).per(10)
  end

  def show
    @author = Author.find(params[:id])
  end
end


class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    @books = @author.books 
  end
end
