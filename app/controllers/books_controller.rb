class BooksController < ApplicationController

  def index
    @books = Book.all.order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book Saved!"
      redirect_to books_path
    else
      flash[:notice] = "There was an error."
      render 'new'
    end
  end

  def show
    @book = Book.find(id)
  end



  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_published, :description)
  end

  def id
    params[:id]
  end


end
