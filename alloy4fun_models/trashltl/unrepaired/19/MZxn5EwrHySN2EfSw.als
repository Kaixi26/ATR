open main
pred idMZxn5EwrHySN2EfSw_prop20 {
	always all f : File | f not in Protected since f in Trash 
}
pred __repair { idMZxn5EwrHySN2EfSw_prop20 }
check __repair { idMZxn5EwrHySN2EfSw_prop20 <=> prop20o }