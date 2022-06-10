open main
pred idcmm2LDEkT5vhDzARJ_prop12 {
	eventually (some f:File | eventually f in Trash implies always f in Trash)
}
pred __repair { idcmm2LDEkT5vhDzARJ_prop12 }
check __repair { idcmm2LDEkT5vhDzARJ_prop12 <=> prop12o }