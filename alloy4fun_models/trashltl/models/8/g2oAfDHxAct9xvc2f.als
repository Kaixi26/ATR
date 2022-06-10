open main
pred idg2oAfDHxAct9xvc2f_prop9 {
always all f : File | f in Protected implies f in Protected'
}
pred __repair { idg2oAfDHxAct9xvc2f_prop9 }
check __repair { idg2oAfDHxAct9xvc2f_prop9 <=> prop9o }