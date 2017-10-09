class Helper < ActiveRecord::Base
	belongs_to :worker
	has_many :users
end
