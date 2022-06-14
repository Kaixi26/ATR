open main
pred idYY8XZxaqMHMkRF4vv_prop3 {
  
  always all t : Train, pos : t.pos | always lone pos
}
pred __repair { idYY8XZxaqMHMkRF4vv_prop3 }
check __repair { idYY8XZxaqMHMkRF4vv_prop3 <=> prop3o }