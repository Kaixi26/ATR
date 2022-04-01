open main
pred idaEf3mPcuLAeffNEq4_prop6 {
  always some f:File | (f in Trash) implies (always f in Trash')

}
pred __repair { idaEf3mPcuLAeffNEq4_prop6 }
check __repair { idaEf3mPcuLAeffNEq4_prop6 <=> prop6o }