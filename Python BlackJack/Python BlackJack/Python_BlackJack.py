suitNames = ['Clubs', 'Diamonds','Hearts', 'Spades']
rankNames = [None, '1','2','3','4','5','6','7','8','9','10','Jack', 'Queen', 'King','Ace']
cardVal   = {'1':1,'2':2,'3':3,'4':4,'5':5,'6':6,'7':7,'8':8,'9':9,'10':10,'Jack':10, 'Queen':10, 'King':10,'Ace':10}
import random
restart = 'Deal or Quit'

global playing,bet,Chips
playing =False
Chips = 100

class Card(object):
    def __init__(self,suit =0,rank =1):
        self.suit =suitNames[suit]
        self.rank =rankNames[rank]
    def __str__(self):
        return self.rank +' of ' + self.suit
    def draw(self):
        print self.rank +' of ' + self.suit
class Deck(object):
    def __init__(self):
        self.deck= []
        for suit in range(4):
            for rank in range(1,14):
                self.deck.append(Card(suit,rank))
    def shuffle(self):#shuffles deck
        random.shuffle(self.deck)
    # print deck 
    def __str__(self):
        res = [str(cards) for cards in self.deck]
        return '\n'.join(res)
    #deal a card from deck
    def deal(self):
        return self.deck.pop()
class Hand(object):
    #global playing
    def __init__(self):
        self.hand=[]
        self.total=0
        self.ace =False  # if False ace =1, if True,ace=11

    def __str__(self):
        completeHand= '' #empty hand at beginning
        for cartas in self.hand:
            cardName= cartas.__str__()
            completeHand += '        ' + cardName
        return completeHand

    def addCard(self,carta):
        self.hand.append(carta)
        #check if aces
        if carta.rank == 'Ace':
            self.ace = True
        self.total += cardVal[carta.rank]
    def handTotal(self):
        if self.ace==True and self.total < 12:
            return self.total + 10
        else: 
            return self.total
    def draw(self,hidden):# displays whats in hand depending on player
        if hidden == True and playing == True:
             #Don't show first hidden card
            starting_card = 1
        else:
            starting_card = 0
        for x in range(starting_card,len(self.hand)):
            self.hand[x].draw()
#initial bet
def Welcome():
    print "Welcome to Josue Llamas's BlackJack Game"
    print 'Work in Progress'
def makeBet():
    global bet
    bet = 0;

    while bet == 0:
        betAmount = int(raw_input('Enter your betting amount = '))
        #make as int or it will take it as string val
        if (betAmount >=1 and betAmount < Chips):
            bet=betAmount
        else:
            print 'please enter a valid amount'
    print '\n you have bet = %s chips \n ' %bet
#determine action based on player input 
def playerInput():
    playerIn=''
    print 'What would you like to do'
    print 'Hit = h  Stand= s Deal = d Quit= q'
    playerIn = raw_input( ' h  s  d  q =  ').lower()

    if playerIn == 'h':
        Hit()
    elif playerIn == 's':
        Stand()
    elif playerIn == 'd':
        DealCards()
    elif playerIn == 'q':
        GameOver()
    else:
        print 'Invalid Input\n'
        playerInput()
def Hit():
    global playing,Chips,bet 
    if playing == True:
        if playerHand.handTotal() <=21:
            playerHand.addCard(deck.deal())
            print playerHand
            print 'hit or stand'
            playerInput()
        if playerHand.handTotal() >21:
            Chips -= bet
            playing =False
            print 'Busted  ' + restart
            playerInput
    else:
        print 'Sorry You cant Hit,  ' + restart
        playerInput()
def Stand():
    global playing,Chips
    if playing == False:
        if playerHand.handTotal() > 0:
            print 'Sorry you cant Stand!\n'
    #all possible options
    else:
        while dealerHand.handTotal() < 17:
            dealerHand.addCard(deck.deal())
        #Dealer busts
        if dealerHand.handTotal() >21:
            print 'Dealer Busts! You Win \n' + restart
            Chips +=bet
            playing = False
            playerInput()
        #player has bigger hand
        elif dealerHand.handTotal < playerHand.handTotal():
            print 'You beat the Dealer, you win\n ' + restart
            Chips += bet
            playing = False
            playerInput()
        #Push
        elif dealerHand.handTotal() < playerHand.handTotal():
            print 'Tied up, push \n' + restart
            playing = False
            playerInput()

        #Dealer Wins
        else:
            print 'Dealer Wins!\n ' + restart
            Chips -=bet
            playing = False
            playerInput()
        
def GameOver():
    print 'Thank You for playing'
    exit()
def DealCards():
    print '------------------------------------------------------------'
    global Chips,bet, playerHand,dealerHand,deck,playing
    print 'There is %s chips in your purse\n ' %Chips
    print " Time to Make a Bet"
    makeBet()


    print 'Game is about to begin'
    print 'Cards are now being drawn\n'
    deck = Deck()
    #print deck
    deck.shuffle()
    #print deck

    #player opening hand
    playerHand = Hand()
    playerHand.addCard(deck.deal())
    playerHand.addCard(deck.deal())
    print 'Player Hand' + str(playerHand)
    #print playerHand
    print " Hand Total =  " + str(playerHand.total)


    #dealer opening hand
    print '\nDealer hand'
    dealerHand=Hand()
    dealerHand.addCard(deck.deal())
    dealerHand.addCard(deck.deal())
    print 'what dealer should only show\n'
    playing = True
    print dealerHand.draw(hidden=True)
    print '\n'

    #decide what to do 
    playerInput()
    #print  'You Have %s Chips '%Chips

    # If game round is over
    if playing == False:
        print  " --- for a total of " + str(dealerHand.calc_val() )
        print "Chip Total: " + str(Chips)
    # Otherwise, don't know the second card yet
    else: 
        print " with another card hidden upside down"
    print '----------------------------------------------------------------'







# Main Driver Code

#beggining purse
Welcome()
print '\nPlayer Purse '
Chips = int(raw_input('please enter the amount of chips you are starting with =  '))
DealCards()














