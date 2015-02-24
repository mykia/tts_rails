class HomeController < ApplicationController
  def index
  	@current_time = Time.now.stamp_like("Aug 27, 2015 5:00 pm")

  	#@current_time = right_now.stamp(11:41) #.to_formatted_s(:long) #use the stamp gem to make this look better
  	

  	# Adjust message by time of day
  	@greet_message = case Time.now.hour
  	when 5..11
  		"Good Morning, Sugar!"
  	when 12..17
  		"Good Afternoon, HoneyBun!"
  	when 18..20
  		"Good Night, Dahlin!"
  	when 21..23, 0..4
  		"You should be sleep, Sweetheart!"
  	end

 end
end
