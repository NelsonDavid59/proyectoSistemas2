class User < ApplicationRecord
  rolify
  audited
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def role
  end
 def is_admin?
    self.has_role?(:admin)
  end
 


end
