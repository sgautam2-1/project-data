class AuthorsController < ApplicationController
  def index
    @genres = Genre.all  # Fetch all genres for the dropdown

    # Fetch authors based on search query and genre filter
    @authors = Author.includes(:books)

    if params[:search].present?
      @authors = @authors.where("name LIKE ?", "%#{params[:search]}%")
    end

    if params[:genre_id].present?
      @authors = @authors.joins(:books).where(books: { genre_id: params[:genre_id] })
    end

    @authors = @authors.distinct.order(:name).page(params[:page]).per(10)
  end

  # Other actions (show, etc.) here
end
