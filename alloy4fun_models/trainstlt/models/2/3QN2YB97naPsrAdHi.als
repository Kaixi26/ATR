open main
pred id3QN2YB97naPsrAdHi_prop3 {
  
  always all t : Train | always one t.pos
}
pred __repair { id3QN2YB97naPsrAdHi_prop3 }
check __repair { id3QN2YB97naPsrAdHi_prop3 <=> prop3o }