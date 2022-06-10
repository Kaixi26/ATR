open main
pred idoMiafor574rMN83aJ_prop4 {
  
	some f:File | eventually f in Trash'
}
pred __repair { idoMiafor574rMN83aJ_prop4 }
check __repair { idoMiafor574rMN83aJ_prop4 <=> prop4o }