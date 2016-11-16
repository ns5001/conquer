class Fear < ActiveRecord::Base
  has_many :user_fears
  has_many :users, through: :user_fears
  has_many :tasks
end
