class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :website,:github_account, :first_name,:last_name,:birthdate,:gender,:stackoverflow_account,
                :bitbucket_account,:blog_address,:twitter_account,:bio

  #TODO commented out til db seed fix
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :birthday, presence: true
end
