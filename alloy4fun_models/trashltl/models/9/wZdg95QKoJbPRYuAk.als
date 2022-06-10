open main
pred idwZdg95QKoJbPRYuAk_prop10 {
always all f : File | f in Protected implies f not in Protected'
}
pred __repair { idwZdg95QKoJbPRYuAk_prop10 }
check __repair { idwZdg95QKoJbPRYuAk_prop10 <=> prop10o }