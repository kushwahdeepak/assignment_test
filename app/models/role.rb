class Role < ApplicationRecord
	validates :name, presence: true, uniqueness: {case_insensitive: true}
end
