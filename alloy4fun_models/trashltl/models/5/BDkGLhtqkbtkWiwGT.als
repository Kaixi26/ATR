open main
pred idBDkGLhtqkbtkWiwGT_prop6 {
    all f : File | f in Trash implies always (f in Trash)

}
pred __repair { idBDkGLhtqkbtkWiwGT_prop6 }
check __repair { idBDkGLhtqkbtkWiwGT_prop6 <=> prop6o }