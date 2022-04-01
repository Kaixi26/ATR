open main
pred idYPWWvNPemRmKXvMfz_prop6 {
	always (
      	all f: File | f in Trash triggered f in Trash
    )
}
pred __repair { idYPWWvNPemRmKXvMfz_prop6 }
check __repair { idYPWWvNPemRmKXvMfz_prop6 <=> prop6o }