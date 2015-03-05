class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user && user.password == password
      p"succesfully login"
      user
    else
      nil
    end
  end
end
