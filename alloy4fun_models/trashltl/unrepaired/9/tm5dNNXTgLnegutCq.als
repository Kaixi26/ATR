open main
pred idtm5dNNXTgLnegutCq_prop10 {
	always all f : File | f in Protected implies f in Protected'
}
pred __repair { idtm5dNNXTgLnegutCq_prop10 }
check __repair { idtm5dNNXTgLnegutCq_prop10 <=> prop10o }