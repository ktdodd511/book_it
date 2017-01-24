class BooksController < ApplicationController

  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all.order("created_at DESC")
  end

  def show
  end

  def new
    @book = current_user.books.build
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def create
    @book = current_user.books.build(book_params)
    @book.category_id = params[:category_id]
    if @book.save
      flash[:notice] = "Book Saved!"
      redirect_to books_path
    else
      flash[:notice] = "There was an error."
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def update
    @book.category_id = params[:category_id]
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
    params.require(:book).permit(:title, :author, :date_published, :description, :category_id)
  end

  def id
    params[:id]
  end

  def find_book
    @book = Book.find(id)
  end



end
