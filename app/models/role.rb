class Role < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :project
  has_many :participantships
  has_many :participants, through: :participantships, source: :user
end
