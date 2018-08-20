class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :questions
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && password == user.password
      user
    else
      nil
    end
  end
end
