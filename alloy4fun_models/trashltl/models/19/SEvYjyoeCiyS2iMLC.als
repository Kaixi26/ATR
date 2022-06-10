open main
pred idSEvYjyoeCiyS2iMLC_prop20 {
	always all f : Trash | once f in Protected && f not in Protected'
}
pred __repair { idSEvYjyoeCiyS2iMLC_prop20 }
check __repair { idSEvYjyoeCiyS2iMLC_prop20 <=> prop20o }