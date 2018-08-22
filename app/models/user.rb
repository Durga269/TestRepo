class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :questions
  has_many :answers
  has_many :votes
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && password == user.password
      user
    else
      nil
    end
  end
end
