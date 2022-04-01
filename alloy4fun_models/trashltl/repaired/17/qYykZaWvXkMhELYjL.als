open main
pred idqYykZaWvXkMhELYjL_prop18 {
  	
	
  	always all f: Protected | f not in Protected until f in Trash
}
pred __repair { idqYykZaWvXkMhELYjL_prop18 }
check __repair { idqYykZaWvXkMhELYjL_prop18 <=> prop18o }