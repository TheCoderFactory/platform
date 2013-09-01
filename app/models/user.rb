class User < ActiveRecord::Base
  rolify
  
  has_one :user_profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # before_create :set_default_role

  # private
  # def set_default_role
  #   self.role ||= Role.find_by_name('student')
  # end
end
