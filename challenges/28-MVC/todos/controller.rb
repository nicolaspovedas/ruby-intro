class Controller

	def initialize
		@user_input = ARGV
	end

	def user_input
		p @user_input
	end


	def read_user_input

		case @user_input[0]
		when "add"
			puts "add"
		when "remove"
			puts "remove"
		when "complete"
			puts "complete"
		when "list"
			puts "View.list"
		else 
			"Error."
		end
	end

end

control = Controller.new
control.user_input