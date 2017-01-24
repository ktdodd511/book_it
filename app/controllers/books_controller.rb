class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def currently_reading
    show
    if current_user
      current_user.currently_reading << @book
      redirect_to user
    end
  end



  private

  def book_params
    params.require(:book).permit(:title, :author)
  end


end
