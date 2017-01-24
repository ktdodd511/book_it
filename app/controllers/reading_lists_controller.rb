class ReadingListsController < ApplicationController

  def index
  end

  def show
    @reading_list = ReadingList.find(params[:id])
  end

  def new
    @reading_list = ReadingList.new
    @reading_list.book = Book.find_by_id(params[:id])
    @reading_list.user = current_user
    @reading_list.have_read = false
    @reading_list.currently_reading = false
    @reading_list.want_to_read = false
  end

  def add_to_have_read
    @reading_list = ReadingList.find(params[:id])
    @book = @reading_list.book
    @user = current_user
    @reading_list.update_attributes(have_read: true)
  end

end
