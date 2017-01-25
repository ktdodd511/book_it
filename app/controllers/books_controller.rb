class BooksController < ApplicationController

  before_action :find_book, :only => [:show, :edit, :update, :destroy]
  before_action :authorize, :only => [:new, :edit]


  def index
    if params[:category].blank?
      @books = Book.all.order("created_at DESC")
    else
      @category_id= Category.find_by(name: params[:category]).id
      @books = Book.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    if @book.reviews.blank?
      @average_review = 0
    else
      @average_review = @book.reviews.average(:rating).round(2)
    end
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
    params.require(:book).permit(:title, :author, :date_published, :description, :category_id, :book_img)
  end


  def find_book
    @book = Book.find(params[:id])
  end



end
