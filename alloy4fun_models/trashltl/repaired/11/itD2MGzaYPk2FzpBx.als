open main
pred iditD2MGzaYPk2FzpBx_prop12 {
	always some f : File | eventually f in Trash implies f in Trash'
}
pred __repair { iditD2MGzaYPk2FzpBx_prop12 }
check __repair { iditD2MGzaYPk2FzpBx_prop12 <=> prop12o }