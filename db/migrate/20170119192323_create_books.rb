class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :date_published
      t.string :description
      t.belongs_to :user
      t.belongs_to :author

      t.timestamps
    end
  end
end
