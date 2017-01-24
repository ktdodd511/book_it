class ReadingList < ApplicationRecord

  has_many :books, through: :users
  belongs_to :user


end
