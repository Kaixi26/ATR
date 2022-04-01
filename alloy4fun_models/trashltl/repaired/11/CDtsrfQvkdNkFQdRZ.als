open main
pred idCDtsrfQvkdNkFQdRZ_prop12 {
	always (all f: File | eventually always f in Trash)
}
pred __repair { idCDtsrfQvkdNkFQdRZ_prop12 }
check __repair { idCDtsrfQvkdNkFQdRZ_prop12 <=> prop12o }