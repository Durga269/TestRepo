class Question < ActiveRecord::Base
  belongs_to :user
  attr_accessible :question
  has_many :comments
end
