class User < ApplicationRecord

  authenticates_with_sorcery!

  has_many :books


  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email

end
