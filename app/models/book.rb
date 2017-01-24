class Book < ApplicationRecord

  belongs_to :reading_lists
  has_many :users, through: :reading_lists


end
