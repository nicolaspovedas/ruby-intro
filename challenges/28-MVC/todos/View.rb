require "csv"

class View

	def initialize
		@new_array = []

	end

	def list
		enumerate_list.each do |task|
		puts "#{task[0]} #{task[1]}"
		end
	end

	def enumerate_list
		num = 1
		CSV.foreach("data.csv") do |row|
		@new_array << row.unshift(num)
		num += 1
		end
		@new_array
	end

end

vista = View.new


vista.list