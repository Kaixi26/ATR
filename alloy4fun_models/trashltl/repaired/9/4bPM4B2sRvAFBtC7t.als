open main
pred id4bPM4B2sRvAFBtC7t_prop10 {
  always all f: File | f in Protected triggered f in Protected
}
pred __repair { id4bPM4B2sRvAFBtC7t_prop10 }
check __repair { id4bPM4B2sRvAFBtC7t_prop10 <=> prop10o }