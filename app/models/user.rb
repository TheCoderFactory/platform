class User < ActiveRecord::Base
  rolify
  
  has_one :user_profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :add_role_to_user


  private

  def add_role_to_user
    self.add_role :student
  end
end
