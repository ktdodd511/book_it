class Book < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_many :reviews

  validates :title, :author, presence: true, length: { minimum: 2 }
  validates :description, length: { minimum: 10 }

  has_attached_file :book_img, styles: { book_index: "250x350>", book_show: "325x475>" }, default_url: "https://historyexplorer.si.edu/sites/default/files/book-158.jpg"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/


end
