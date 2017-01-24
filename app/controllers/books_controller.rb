class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "You've saved a book!"
      redirect to book
    else
      flash[:error] = "There was an error"
      redirect_to books_url
    end
  end


  private

  def book_params
    params.require(:book).permit(:title, :author)
  end


end
