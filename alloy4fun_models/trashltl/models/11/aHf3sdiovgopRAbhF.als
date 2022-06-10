open main
pred idaHf3sdiovgopRAbhF_prop12 {
	 always (some f:File&Trash | always f in Trash)
}
pred __repair { idaHf3sdiovgopRAbhF_prop12 }
check __repair { idaHf3sdiovgopRAbhF_prop12 <=> prop12o }