open main
pred iddWnWEGg6wTvnvkXFk_prop6 {
	always all f:File | (f in Trash) releases (f not in Trash) and after always (f in Trash)
}
pred __repair { iddWnWEGg6wTvnvkXFk_prop6 }
check __repair { iddWnWEGg6wTvnvkXFk_prop6 <=> prop6o }