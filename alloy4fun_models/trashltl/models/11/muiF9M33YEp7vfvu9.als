open main
pred idmuiF9M33YEp7vfvu9_prop12 {
	eventually some f:File | f in Trash implies always f in Trash
}
pred __repair { idmuiF9M33YEp7vfvu9_prop12 }
check __repair { idmuiF9M33YEp7vfvu9_prop12 <=> prop12o }