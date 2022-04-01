open main
pred idSdYAKhKCBTk57sJmD_prop12 {
	 all f:File | eventually f in Trash implies  f in Trash
}
pred __repair { idSdYAKhKCBTk57sJmD_prop12 }
check __repair { idSdYAKhKCBTk57sJmD_prop12 <=> prop12o }