open main
pred idjNeJThnXoPKfD44ki_prop14 {
	always all p:Protected | p in Trash implies after p'=Protected
}
pred __repair { idjNeJThnXoPKfD44ki_prop14 }
check __repair { idjNeJThnXoPKfD44ki_prop14 <=> prop14o }