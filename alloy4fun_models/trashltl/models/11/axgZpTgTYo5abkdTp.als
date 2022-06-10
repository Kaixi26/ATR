open main
pred idaxgZpTgTYo5abkdTp_prop12 {
	 all f:File | eventually f in Trash implies always f in Trash
}
pred __repair { idaxgZpTgTYo5abkdTp_prop12 }
check __repair { idaxgZpTgTYo5abkdTp_prop12 <=> prop12o }