#the code doesn't fully function properly yet :( 
#couldn't figure out how to set the winning sequence & tie-ing sequence

class TicTacToe
def initialize()
	@board_spot = {:a1 => "1", :a2 => "2", :a3 => "3",		#instead of storing the x & o's on the board, maybe i can keep track of it with some sort of counter?
				   :b1 => "4", :b2 => "5", :b3 => "6",
			   	   :c1 => "7", :c2 => "8", :c3 => "9" }

@win = [						#maybe i should try using a boolean sequence to determining the winning combos?
[:a1, :a2, :a3],
[:b1, :b2, :b3],
[:c1, :c2, :c3],
[:a1, :b1, :c1],
[:a2, :b2, :c2],
[:a3, :b3, :c3],
[:a1, :b2, :c3],
[:a3, :b2, :c1]
]

	@user_1 = 'X'
	@user_2 = 'O'

	# @user_1 = rand() > 0.5 ? 'X' : 'O'
	# @user_2 = @user_1 == 'X' ? 'O' : 'X'


@stored_key1 = []
@stored_key2 = [] 

end # end initialize

# def marker
# 	if(@user_1 == 'X')
# 		user_1_turn
# 	else
# 		user_2_turn
# 	end
# end 

def user_namechoice
	print "What is user one\'s name?"
	@user1_name = gets.chomp
	print "What is user two\'s name?"
	@user2_name = gets.chomp
end


def draw_board
	puts "#{@board_spot[:a1]}|#{@board_spot[:a2]}|#{@board_spot[:a3]}"
	puts "------"
	puts "#{@board_spot[:b1]}|#{@board_spot[:b2]}|#{@board_spot[:b3]}"
	puts "------"
	puts "#{@board_spot[:c1]}|#{@board_spot[:c2]}|#{@board_spot[:c3]}"
	puts ""
	puts ""
end

def user_1_turn
	puts "#{@user1_name}, choose your spot"
	user1_choice = gets.chomp
	puts ""
	key_pos=@board_spot.key(user1_choice)    #var_name = 
	@board_spot[key_pos] = @user_1
	@stored_key1 << key_pos 
end

def user_2_turn
	puts "#{@user2_name}, choose your spot"
	user2_choice = gets.chomp
	puts""
	key_pos = @board_spot.key(user2_choice)
	@board_spot[key_pos] = @user_2
	@stored_key2 << key_pos
end

def assess
#if every value in hash = "x" || "o", then puts "it's a draw". end loop  
end

def win?
	@stored_key1 & @win  
end

def tie?
end


end # end of class

game = TicTacToe.new
game.user_namechoice

5.times do 
game.draw_board
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board
end