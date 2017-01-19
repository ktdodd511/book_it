class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.string :description
      t.belongs_to :book
      t.belongs_to :author

      t.timestamps
    end
  end
end
