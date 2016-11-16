class UserFear < ActiveRecord::Base
  belongs_to :user
  belongs_to :fear
end
