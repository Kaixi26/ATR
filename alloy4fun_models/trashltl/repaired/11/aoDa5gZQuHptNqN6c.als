open main
pred idaoDa5gZQuHptNqN6c_prop12 {
	always( all f: File | f not in Trash and eventually f in Trash and after always f in Trash)
}
pred __repair { idaoDa5gZQuHptNqN6c_prop12 }
check __repair { idaoDa5gZQuHptNqN6c_prop12 <=> prop12o }