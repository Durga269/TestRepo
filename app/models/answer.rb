class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes , dependent: :destroy
  attr_accessible :answer
  validates :answer, :presence => true, :length => { :minimum => 5 }
end
