open main
pred idobo5tYk7qxZS2DczM_prop20 {
 	always (all f:File | f in Trash  since  f not in  Protected) 
}
pred __repair { idobo5tYk7qxZS2DczM_prop20 }
check __repair { idobo5tYk7qxZS2DczM_prop20 <=> prop20o }