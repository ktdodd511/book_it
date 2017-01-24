class ReadingListsController < ApplicationController

  def index
  end

  def show
    # @reading_list = ReadingList.find(id)
  end

  def new
    @reading_list = ReadingList.new
    @reading_list.user = current_user
    @reading_list.book = Book.find(id)
    @reading_list.have_read = false
    @reading_list.currently_reading = false
    @reading_list.want_to_read = false
    @reading_list.save
      if @reading_list.save
        flash[:notice] = "You have saved a book!"
      end
      redirect_to user_path(current_user)
  end

  def add_to_have_read
    @reading_list = ReadingList.find(id)
    @book = @reading_list.book
    @user = current_user
    @reading_list.update_attributes(have_read: true)
  end

end

private

def id
  params[:id]
end
