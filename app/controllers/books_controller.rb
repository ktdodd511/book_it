class BooksController < ApplicationController

  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all.order("created_at DESC")
  end

  def show
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

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = 'Book successfully updated'
      redirect_to book_path(@book)
    else
      flash[:notice] = "There was an error."
      render 'new'
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Successfully deleted a book"
    redirect_to books_path
  end



  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_published, :description)
  end

  def id
    params[:id]
  end

  def find_book
    @book = Book.find(id)
  end



end
