open main
pred idpZ55SCfnvnvxqBsSw_prop6 {
	all t:Trash | eventually always ( t in Trash)
}
pred __repair { idpZ55SCfnvnvxqBsSw_prop6 }
check __repair { idpZ55SCfnvnvxqBsSw_prop6 <=> prop6o }