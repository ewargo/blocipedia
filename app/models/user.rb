class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :username, 
  :ispremium, :payments

  has_many :wikis, through: :collaborators
  has_many :collaborators
  has_many :payments

  def ispremium
  end
  
end
