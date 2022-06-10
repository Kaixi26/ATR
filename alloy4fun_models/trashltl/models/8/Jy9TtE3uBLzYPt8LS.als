open main
pred idJy9TtE3uBLzYPt8LS_prop9 {
	all p : Protected | p not in Trash' and p.*link not in Trash'
}
pred __repair { idJy9TtE3uBLzYPt8LS_prop9 }
check __repair { idJy9TtE3uBLzYPt8LS_prop9 <=> prop9o }