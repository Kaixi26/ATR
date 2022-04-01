open main
pred idfYtAhvxWr3xptMCzx_prop12 {
	always all f: File | eventually f in Trash
}
pred __repair { idfYtAhvxWr3xptMCzx_prop12 }
check __repair { idfYtAhvxWr3xptMCzx_prop12 <=> prop12o }