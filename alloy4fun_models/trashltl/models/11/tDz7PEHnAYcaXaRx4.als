open main
pred idtDz7PEHnAYcaXaRx4_prop12 {
  
	always all f:File | eventually f in Trash
}
pred __repair { idtDz7PEHnAYcaXaRx4_prop12 }
check __repair { idtDz7PEHnAYcaXaRx4_prop12 <=> prop12o }