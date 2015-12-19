class Booking < ActiveRecord::Base
	belongs_to :room 

	# button call method

	def select_date
		@date = (@date+1).to_s
	end
end
