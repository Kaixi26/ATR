open main
pred ideNqTTPwin8G83WSCb_prop12 {
	always all f : File | eventually f in Trash
  	always all f : Trash | f in Trash'
}
pred __repair { ideNqTTPwin8G83WSCb_prop12 }
check __repair { ideNqTTPwin8G83WSCb_prop12 <=> prop12o }