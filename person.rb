
class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def name
		@name
	end

	def age
		@age
	end

	def name=(new_name)
		@name = new_name 

	def age=(new_age)
		@age = new_age
	end
end

# 

class Person
	attr_reader :name
	def initialize(name, age)
		@name = name
		@age = age
	end
end