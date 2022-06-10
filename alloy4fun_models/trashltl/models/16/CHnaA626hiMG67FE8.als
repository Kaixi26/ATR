open main
pred idCHnaA626hiMG67FE8_prop17 {
	always (some f:Trash | after no Trash&f)
}
pred __repair { idCHnaA626hiMG67FE8_prop17 }
check __repair { idCHnaA626hiMG67FE8_prop17 <=> prop17o }