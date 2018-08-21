class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :answer
  validates :answer, :presence => true, :length => { :minimum => 5 }
end
