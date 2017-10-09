class User < ActiveRecord::Base
	belongs_to :personal
	belongs_to :helper
end
