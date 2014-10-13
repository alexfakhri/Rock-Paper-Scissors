class Player


	def initialize(name)
		@name = name
	end

	attr_reader :name
	attr_writer :select_weapon

	def select_weapon
		@select_weapon
	end

end