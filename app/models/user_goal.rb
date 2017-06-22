class UserGoal < ApplicationRecord
	belongs_to :user
	validates :user_id, presence: true, uniqueness: true
	validates :target, presence: true
	validates :current, presence: true
end
