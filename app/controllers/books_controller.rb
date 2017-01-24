class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end



  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_published, :description)
  end


end
