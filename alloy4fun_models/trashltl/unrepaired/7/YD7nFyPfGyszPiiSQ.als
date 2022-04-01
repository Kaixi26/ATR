open main
pred idYD7nFyPfGyszPiiSQ_prop8 {
    	always all f: File.link | eventually f in Trash
}
pred __repair { idYD7nFyPfGyszPiiSQ_prop8 }
check __repair { idYD7nFyPfGyszPiiSQ_prop8 <=> prop8o }