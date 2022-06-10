open main
pred id2TD4wy6Bacaju6y39_prop10 {
  always all f: File | once f in Protected implies always after f in Protected
}
pred __repair { id2TD4wy6Bacaju6y39_prop10 }
check __repair { id2TD4wy6Bacaju6y39_prop10 <=> prop10o }