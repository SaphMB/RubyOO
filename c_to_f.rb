#!/usr/bin/env ruby

class Celcius
	def initialize(temperature)
		@temperature = temperature
	end

	def conversion
		(@temperature*1.8 + 32).round
	end

	def to_s
		"#{conversion} degrees C"
	end

	def weekly(mon, tue, wed, thu, fri, sat, sun)
		days = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
		[mon, tue, wed, thu, fri, sat, sun].each_with_index do |t, index|
			puts "#{days[index]} | #{self.class.new(t).to_s} | #{t} degrees F" 
	end
	end

	def weeklyhash(days)
		days.each do |key, value|
			puts "#{key} | #{value} degrees | #{self.class.new(value).to_s}"
		end
	end	
end


Celcius = Celcius.new(3)
#puts "The temperature in celcius is #{Celcius.to_s}"

#Celcius.weekly(16,17,18,38,21,16,19)

Celcius.weeklyhash({"mon"=>16, "tue"=>17, "wed"=>18, "thu"=>18, "fri"=>21, "sat"=>16, "sun"=>19})