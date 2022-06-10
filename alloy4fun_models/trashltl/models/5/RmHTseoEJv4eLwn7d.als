open main
pred idRmHTseoEJv4eLwn7d_prop6 {
    all f : File | always (f in Trash implies (f in Trash))

}
pred __repair { idRmHTseoEJv4eLwn7d_prop6 }
check __repair { idRmHTseoEJv4eLwn7d_prop6 <=> prop6o }