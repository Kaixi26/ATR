open main
pred idA8MCKYCT5XmsDbacY_prop8 {

  all f:File | idA8MCKYCT5XmsDbacY_isLink[f] implies eventually f.link in Trash
}
pred idA8MCKYCT5XmsDbacY_isLink[f:File]{
	some g:File | g->f in link
}
pred __repair { idA8MCKYCT5XmsDbacY_prop8 }
check __repair { idA8MCKYCT5XmsDbacY_prop8 <=> prop8o }