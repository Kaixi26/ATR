open main
pred idS42Y4LQZTjMtjLZwf_prop14 {
  all t: Trash & Protected | after t not in Protected
}
pred __repair { idS42Y4LQZTjMtjLZwf_prop14 }
check __repair { idS42Y4LQZTjMtjLZwf_prop14 <=> prop14o }