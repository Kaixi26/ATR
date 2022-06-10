open main
pred idMyvmrBJRwDoN7qeZo_prop8 {
    always all l: File.link | eventually always l in Trash
}
pred __repair { idMyvmrBJRwDoN7qeZo_prop8 }
check __repair { idMyvmrBJRwDoN7qeZo_prop8 <=> prop8o }