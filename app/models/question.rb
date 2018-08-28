class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers , dependent: :destroy
  attr_accessible :question
end
