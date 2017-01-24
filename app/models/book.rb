class Book < ApplicationRecord

  has_many :reading_lists, through: :users
  belongs_to :author
  belongs_to :user


end
