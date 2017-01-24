class AddReadingListsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :reading_lists, :book 
  end
end
