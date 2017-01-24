class CreateReadingLists < ActiveRecord::Migration[5.0]
  def change
    create_table :reading_lists do |t|
      t.boolean :currently_reading
      t.boolean :have_read
      t.boolean :want_to_read
      t.belongs_to :user

      t.timestamps
    end
  end
end
