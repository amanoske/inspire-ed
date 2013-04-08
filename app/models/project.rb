class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :creator, class_name: 'User'
  has_many :likes
  has_many :links
  has_many :photos

  has_many :roles
  has_many :participantships
  has_many :participants, through: :participantships, source: :user

end
