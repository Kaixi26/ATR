open main
pred id65C9JPruqgynC2eXT_prop12 {
  	eventually (some f : File-Trash | f in Trash' implies always f in Trash')
}
pred __repair { id65C9JPruqgynC2eXT_prop12 }
check __repair { id65C9JPruqgynC2eXT_prop12 <=> prop12o }