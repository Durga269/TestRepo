class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes , dependent: :destroy
  attr_accessible :answer
end
