class Player


	def initialize(name)
		@name = name
	end

	attr_reader :name
	attr_writer :select_gesture

	def select_gesture
		@select_gesture
	end

end