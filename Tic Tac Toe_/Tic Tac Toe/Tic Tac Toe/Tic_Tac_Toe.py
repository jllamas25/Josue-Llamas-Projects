
# prints the tic tac toe board
def board(square):
	print '    Tic Tac Toe'
	print ' '+'_____' + ' ' +'_____' + ' ' '_____' + ' ' 
	print '|  ' + square[1]  + '  |  ' + square[2] + '  |  ' + square[3] + '  | ' 
	print '|'+'_____' + '|' +'_____' + '|' '_____' + '|' 
	print '|  ' + square[4]  + '  |  ' + square[5] + '  |  ' + square[6] + '  | ' 
	print '|'+'_____' + '|' +'_____' + '|' '_____' + '|' 
	print '|  ' + square[7]  + '  |  ' + square[8] + '  |  ' + square[9] + '  | ' 
	print '|'+'_____' + '|' +'_____' + '|' '_____' + '|' 
# player chooses whether to be an x or o
def playerInput():
    marker = ''
    while not (marker == 'X' or marker == 'O'):
        marker = raw_input('Player 1: Do you want to be x or O? ').upper()
    if marker == 'X':
        return ('X','O')
    else:
        return ('O','X')
#places x or o on the board
def place_marker(square, marker, position):
    square[position]= marker
# checks if the player has won
def win_check(square,mark):
    return ( (square[1] == mark and square[2] == mark and square[3] == mark) or # row1
             (square[4] == mark and square[5] == mark and square[6] == mark) or #row 2
             (square[7] == mark and square[8] == mark and square[9] == mark) or # row 3
             (square[1] == mark and square[4] == mark and square[7] == mark) or #col 1
             (square[3] == mark and square[6] == mark and square[9] == mark) or #col 2
             (square[2] == mark and square[5] == mark and square[8] == mark) or #col 3 
             (square[1] == mark and square[5] == mark and square[9] == mark) or #diag 1 
             (square[3] == mark and square[5] == mark and square[7] == mark)  #diag 2
           )
# randomly selects who goes first
import random
def choose_first():
    if random.randint(0, 1) == 0:
        return 'Player 2'
    else:
        return 'Player 1'
# checks if there is an empty spot
def space_check(square,position):
    return square[position]== ' '
 # checks if the board is full 
def full_board_check(square):
    for i in range (1,10):
        if space_check(square,i):
            return False
    return True
#player chooses which square to occupy
def player_choice(board):
    # Using strings because of raw_input
    position = ' '
    while position not in '1 2 3 4 5 6 7 8 9'.split() or not space_check(board, int(position)):
        
        position = raw_input('Choose your next position: (1-9) ')
    return int(position)
# checks to see if the players want to play again
def replay():
    return raw_input('Do you want to play again? Enter Yes or No: ').lower().startswith('y')


#Tic Tac Toe Game Main code
print 'Welcome to Tic Tac Toe'
while True:
	theBoard = [' ']*10
	playerInput()
	player1marker,player2marker = playerInput()
	turn = choose_first()
	print  turn + ' will go first'
	
	Game_on = True
	while Game_on:
		if turn == 'player 1':
			print turn
			board(theBoard)
			position = player_choice(theBoard)
			place_marker(theBoard,player1marker,position)

			if win_check(theBoard,player1marker):
				board(theBoard)
				print turn + ' wins'
				Game_on =False
			else:
				if full_board_check(theBoard):
					board(theBoard)
					print ' The game ends in a draw'
					break
				else:
					turn = 'player 2'

		else: 
			turn == 'player 2'
			print turn
			board(theBoard)
			position = player_choice(theBoard)
			place_marker(theBoard,player2marker,position)
			if win_check(theBoard,player2marker):
				board(theBoard)
				print turn + ' wins'
				Game_on =False
			else:
				if full_board_check(theBoard):
					board(theBoard)
					print ' The game ends in a draw'
					break
				else:
					turn = 'player 1'

	if not replay():
		break
	


	

			



		





