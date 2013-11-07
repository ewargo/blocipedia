class Wiki < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :user
  has_many :collaborators
end
