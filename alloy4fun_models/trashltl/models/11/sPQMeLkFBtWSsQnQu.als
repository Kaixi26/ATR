open main
pred idsPQMeLkFBtWSsQnQu_prop12 {
	always (all f:File | (eventually f in Trash) implies (always f in Trash)) 
}
pred __repair { idsPQMeLkFBtWSsQnQu_prop12 }
check __repair { idsPQMeLkFBtWSsQnQu_prop12 <=> prop12o }