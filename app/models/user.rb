class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_phobias
  has_many :phobias, through: :user_phobias
  has_many :user_tasks
  has_many :tasks, through: :user_tasks
end
