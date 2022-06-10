open main
pred idNk57rWi8An2JAt7Qs_prop6 {
    all f : File | always (f in Trash implies always (f in Trash))

}
pred __repair { idNk57rWi8An2JAt7Qs_prop6 }
check __repair { idNk57rWi8An2JAt7Qs_prop6 <=> prop6o }