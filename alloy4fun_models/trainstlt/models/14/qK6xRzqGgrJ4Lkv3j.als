open main
pred idqK6xRzqGgrJ4Lkv3j_prop15 {
	
	always eventually (some Train implies ((Train.pos)' != Train.pos))
}
pred __repair { idqK6xRzqGgrJ4Lkv3j_prop15 }
check __repair { idqK6xRzqGgrJ4Lkv3j_prop15 <=> prop15o }