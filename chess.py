
def knigh():
    print("Hello world")
    #Check if space is available
    #ifWLKnight
    #check current position
    #ifWRKnight
    #ifBLKnight
    #ifBRKnight

def chessBoardList():
    chessboard = []
    for x in ("A", "B", "C", "D", "E", "F", "G", "H"):
        for y in range(8):
            y = y + 1
            #y = str(y)
            #z = x + y
            #print(z)
            #print(chessboard)
            #chessboard.update({z:""})
            chessboard.append([[x, y],""])
            # rook
    chessboard.append([['A', 1], "WLRook"])
    print(chessboard)

def chessBoard():
    chessboard = {}
    for x in range(8):
        x = x + 1
        x = str(x)
        for y in range(8):
            y = y + 1
            y = str(y)
            z = x + y
            #print(z)
            #print(chessboard)
            chessboard.update({z:""})
            #print(chessboard)
            #return chessboard
    # rook
    chessboard.update({"11": "WLRook"})
    chessboard.update({"18": "WRRook"})
    chessboard.update({"81": "BLRook"})
    chessboard.update({"88": "BRRook"})
    # knight
    chessboard.update({"12": "WLKnight"})
    chessboard.update({"17": "WRKnight"})
    chessboard.update({"82": "BLKnight"})
    chessboard.update({"87": "BRKnight"})
    # bishop
    chessboard.update({"13": "WLBishop"})
    chessboard.update({"16": "WRBishop"})
    chessboard.update({"83": "BLBishop"})
    chessboard.update({"86": "BRBishop"})
    #queen
    chessboard.update({"14": "WQueen"})
    chessboard.update({"84": "BQueen"})
    #king
    chessboard.update({"15": "WKing"})
    chessboard.update({"85": "BKing"})
    print(chessboard)

def assignSpaces():
    #rook
    chessBoard.update({"11": "WLRook"})
    #knight
    chessBoard.update({"12": "WLKnight"})
    print(chessboard)

chessBoardList()
#chessBoard()
#assignSpaces()
knigh()