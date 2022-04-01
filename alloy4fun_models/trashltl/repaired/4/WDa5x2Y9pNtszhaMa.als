open main
pred idWDa5x2Y9pNtszhaMa_prop5 {
       (some f:File | eventually f  not in File)
}
pred __repair { idWDa5x2Y9pNtszhaMa_prop5 }
check __repair { idWDa5x2Y9pNtszhaMa_prop5 <=> prop5o }