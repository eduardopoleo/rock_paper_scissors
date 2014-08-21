

# Transfors user and computer choices from lettes to words. e.g "S"=> "Scissors"
def transforming_choices(letter)
	if letter=="P"
		letter="Paper"
	elsif letter=="R"	
		letter="Rock"
	else
		letter="Scissors"
	end	
end

# Gets computer choice by using ruby random methods.
def computer_choosing
	computer_choice= Random.rand(12)
	if computer_choice<4
		computer_choice="P"
	elsif ((4..7))===computer_choice
		computer_choice="R"
	else
		computer_choice="S"
	end
end


# Contains the logic that compares the end result from both choices. 
# Takes into account all the possible cases
def comparison(human_choice,computer_choice)
	if human_choice==computer_choice
		puts "It's a tie"
	elsif human_choice=="Paper"
		if computer_choice=="Rock"
			puts "Paper wraps Rock!","You won!"
		else
			puts "Scissors cut paper!", "Computer won!"
		end
	elsif human_choice=="Rock"
		if computer_choice=="Paper"
			puts "Paper wraps Rock!", "Computer won!"
		else
			puts "Rock destroy scissors!", "You won!"
		end
	elsif human_choice=="Scissors"
		if computer_choice=="Rock"
			puts "Rock destroy scissors!", "Computer won!"
		else
			puts "Scissors cut paper!", "You won!"
		end
	end
end

puts "Play Paper Rock Scissors!"
# The want_to_play constant is the looping condition
want_to_play="Y"

while want_to_play=="Y"
	puts "Choose one: (P/R/S)"
	human_choice=gets.chomp.capitalize

	# In case that the user inputs a non relevant choice
	if human_choice!="P" && human_choice!="R" && human_choice!="S"
		next
	end
	#Transforms computer
	human_choice=transforming_choices(human_choice)
	computer_choice=transforming_choices(computer_choosing)

	puts "You picked #{human_choice} and the computer picked #{computer_choice}"

	comparison(human_choice,computer_choice)

	puts "Do you want to keep playing? (Y/N)"
	want_to_play=gets.chomp.capitalize
	puts "----------------------------"
end


