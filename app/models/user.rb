class User < ApplicationRecord
	has_many :records
	has_one :user_goal
end
