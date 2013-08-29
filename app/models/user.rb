class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #TODO commented out til db seed fix
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :birthday, presence: true
end
