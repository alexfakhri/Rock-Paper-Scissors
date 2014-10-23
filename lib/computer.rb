class Computer

	def gestures
		[:rock, :scissors, :paper]
	end

	def select_gesture
		gestures.sample
	end
	
end