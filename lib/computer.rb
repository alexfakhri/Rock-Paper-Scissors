class Computer

	def gestures
		[:rock, :scissors, :paprer]
	end

	def select_gesture
		gestures.sample
	end
	
end