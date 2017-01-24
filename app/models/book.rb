class Book < ApplicationRecord

  belongs_to :reading_lists
  belongs_to :author
  has_many :users, through: :reading_lists


end
