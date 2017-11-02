#include <iostream>

using namespace std;



class chess_board
{
public:
	int Board[9][9];           // registers squares covered by knight
	int NextI[8];              // registers the next possible i
	int NextJ[8];              // registers the next possible i
	int exits [8];             //array for the NPOS of the next set of nextj next i
	int Max_poss;			   // register for NPOS
	int pos_i[8];				//used to determing location in the NEXTI/J arrays
	int pos_j[8];
	int currI, currJ;			// sets the current i and j
	int  ready_index;			//sets location 

public:
	//constructor
	chess_board();

	// finds possible i and j
	void NextIandJ(int KTMOV1[], int KTMOV2[], int currI, int currJ);

	//sets new i and j and increments count on chessboard
	void MoveKnight(int M);

	//used to find the MIN value of exits
	void exit(int KTMOV1[], int KTMOV2[], int NextI[], int NextJ[]);

	//prints chessboard
	void print();

};

chess_board::chess_board()
{
	for (int i = 1; i < 9; i++)
	{
		for (int j = 1; j < 9; j++)
		{
			Board[i][j] = 0;
		}
	}

	for (int i = 0; i < 8; i++)
	{
		NextI[i] = 0;
		NextJ[i] = 0;
		exits[i] = 0;
		pos_i[i] = 0;
		pos_j[i] = 0;

	}
}

void chess_board::print()
{
	for (int i = 1; i < 9; i++)
	{
		for (int j = 1; j < 9; j++)
		{
			cout << Board[i][j] << " ";
		}

		cout << endl;
	}
}

void chess_board::NextIandJ(int KTMOV1[], int KTMOV2[], int currI, int currJ)
{
	
	int NPOS = 0;	// number of possiblities for i and j
	for (int NextP = 0; NextP< 8; NextP++)
	{
		// finding next possible i and j
		NextI[NextP] = currI + KTMOV1[NextP];                  // finding next possible i and j
		NextJ[NextP] = currJ + KTMOV2[NextP];

		// this two if statements skip the impossible i and j
		if (NextI[NextP] <=0 || NextI[NextP] > 8 || NextJ[NextP] <= 0 || NextJ[NextP] >8)
			continue;
		if (Board[NextI[NextP]][NextJ[NextP]] != 0)
			continue;
		NPOS++;
		
		//used to save the location of the array of the nextI/J
		for (int k = (NPOS - 1); k < NPOS; k++)
		{
			pos_i[k] = NextP; 
			pos_j[k] = NextP;
		}
	}

	Max_poss = NPOS;// saves NPOS to a register for later use
	
	//cout << "npos" << Max_poss << endl;
}

void chess_board::exit(int KTMOV1[], int KTMOV2[], int NextI[], int NextJ[])
{
	int tempi[8];
	int tempj[8];
	int posMin;

	for (int i = 0; i < 8; i++)
	{
		tempi[i] = 0;
		tempj[i] = 0;
	}
	for (int L = 0; L < Max_poss; L++)
	{
		int NPOS = 0;
		for (int NextP = 0; NextP < 8; NextP++)
		{
			// finding next possible i and j of the NextI and NextJ
			tempi[NextP] = NextI[pos_i[L]] + KTMOV1[NextP];                 
			tempj[NextP] = NextJ[pos_j[L]] + KTMOV2[NextP];

			if (tempi[NextP] <= 0 || tempi[NextP] > 8 || tempj[NextP] <= 0 || tempj[NextP] > 8)
				continue;

			if (Board[tempi[NextP]][tempj[NextP]] != 0)
				continue;
			NPOS++;
		}
		// exits[] stores the number of NPOS for the next set of moves.
		exits[L] = NPOS;
		
	}
	//This determines the MIN value
	for (int k = 0; k < Max_poss; k++)
	{
		posMin = exits[0];
		if (exits[k] < posMin)
			posMin = exits[k];
	}
	//sets Min as the first choice if a tie
	for (int k = 0; k < Max_poss; k++)
	{
		if (exits[k] == posMin)
		{
			ready_index = k;
			break;
		}
	}
}

void chess_board::MoveKnight(int M)
{
	currI = NextI[pos_i[ready_index]];
	currJ = NextJ[pos_j[ready_index]];
	Board[currI][currJ] = M+1;
}

int main()
{
	int x;
	int si = 1; //starting i value
	int sj = 1; //starting j value

	cout << "Knight's Tour\n" << endl;
	
	int KTMOV1[] = { -2, -1, 1, 2, 2, 1, -1, -2 };
	int KTMOV2[] = { 1, 2, 2, 1, -1, -2, -2, -1 };
	cout << "Starting position " << "(i,j) = " <<"("<< si << ","<< sj<<")"<< endl;
	chess_board play;
	play.Board[si][sj] = 1;
	play.print();
	cout << endl;
	cout << " Complete Tour" << endl;
	play.NextIandJ(KTMOV1, KTMOV2, si, sj);
	play.exit(KTMOV1, KTMOV2, play.NextI, play.NextJ);
	play.MoveKnight(1);

	for (int M = 2; M < 64; M++)
	{
		play.NextIandJ(KTMOV1, KTMOV2, play.currI, play.currJ);
		if (play.Max_poss == 0)
		{
			cout << "Faliure " << endl;
			break;
		}
		
		play.exit(KTMOV1, KTMOV2, play.NextI, play.NextJ);
		play.MoveKnight(M);
	}

	play.print();
	cin >> x;
	return 0;
}
