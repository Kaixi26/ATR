open main
pred iduSc6tnhdZ9aFXH3Ro_prop12 {
	always( some f: File | f not in Trash and eventually f in Trash and after always f in Trash)
}
pred __repair { iduSc6tnhdZ9aFXH3Ro_prop12 }
check __repair { iduSc6tnhdZ9aFXH3Ro_prop12 <=> prop12o }