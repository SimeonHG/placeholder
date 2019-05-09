class Project < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :team , optional: true
	has_many :tasks
end
