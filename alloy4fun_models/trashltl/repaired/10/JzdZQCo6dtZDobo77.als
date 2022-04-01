open main
pred idJzdZQCo6dtZDobo77_prop11 {
	always all f:File | f in File-Protected implies (f' in Protected)
  

}
pred __repair { idJzdZQCo6dtZDobo77_prop11 }
check __repair { idJzdZQCo6dtZDobo77_prop11 <=> prop11o }