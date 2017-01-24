class AddBooksToReadingLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :reading_lists
  end
end
