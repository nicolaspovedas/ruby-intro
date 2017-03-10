require "csv"

class Model

	def initialize
		@first_arg, *@the_rest = ARGV
	end	

	def add_task
		CSV.open("data.csv", "a+") do |csv|
			csv << @the_rest
		end
	end

	def join_line
		@the_rest.join (" ")
	end


	def delete_task

			new_tasks = []
		CSV.foreach("data.csv") do |row|
			if (row.join (" ")) == join_line
				row.clear
				new_tasks << row
				p new_tasks
			end
			# CSV.open("data.csv", "a+") do |csv|
			# 	p csv
			# 	# csv << row
			# end
		end
	end	

	# def complete_task(num or task)
	# end
end	
modelo = Model.new
modelo.delete_task