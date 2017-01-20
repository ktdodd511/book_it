class Book < ApplicationRecord
  
  belongs_to :author, optional: false
  belongs_to :user, optional: true

end
