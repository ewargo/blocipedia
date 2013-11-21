class Wiki < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :users, through: :collaborators
  has_many :collaborators, dependent: :destroy

end
