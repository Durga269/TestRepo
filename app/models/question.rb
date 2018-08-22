class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers , dependent: :destroy
  attr_accessible :question
  validates :question, :presence => true, :length => { :minimum => 5 }
end
