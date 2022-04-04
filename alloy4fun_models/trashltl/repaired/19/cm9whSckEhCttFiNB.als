open main
pred idcm9whSckEhCttFiNB_prop20 {
 	always (all f:File | f in Trash since  (f not in Protected') )
}
pred __repair { idcm9whSckEhCttFiNB_prop20 }
check __repair { idcm9whSckEhCttFiNB_prop20 <=> prop20o }