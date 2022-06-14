open main
pred id4osG5uqF6NSjFzPqR_prop3 {
  
  always all t : Train, pos : t.pos | always lone pos
}
pred __repair { id4osG5uqF6NSjFzPqR_prop3 }
check __repair { id4osG5uqF6NSjFzPqR_prop3 <=> prop3o }