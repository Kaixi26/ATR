open main
pred idhGHrLHDFXM9nbEyWe_prop12 {
	always some f : File | eventually f in Trash implies f in Trash
}
pred __repair { idhGHrLHDFXM9nbEyWe_prop12 }
check __repair { idhGHrLHDFXM9nbEyWe_prop12 <=> prop12o }