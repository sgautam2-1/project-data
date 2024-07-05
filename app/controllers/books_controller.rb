class BooksController < ApplicationController
  def index
    @books = Book.includes(:author).all
  end

  def show
    @book = Book.find(params[:id])
  end

  def fetch_books
    response = HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:9780980200447&jscmd=details&format=json')
    data = response.parsed_response

    data.each do |book_data|
      author_name = book_data['author']
      author = Author.find_or_create_by(name: author_name)

      Book.create(
        title: book_data['title'],
        description: book_data['description'],
        isbn: book_data['isbn'],
        published_date: book_data['published_date'],
        author: author
      )
    end

    redirect_to books_path, notice: 'Books fetched and added successfully.'
  end
end
