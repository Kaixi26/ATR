open main
pred idiW6ZLyKsjLmPuoQxW_prop17 {
	always all f:File | f in Trash implies after f in Trash
}
pred __repair { idiW6ZLyKsjLmPuoQxW_prop17 }
check __repair { idiW6ZLyKsjLmPuoQxW_prop17 <=> prop17o }