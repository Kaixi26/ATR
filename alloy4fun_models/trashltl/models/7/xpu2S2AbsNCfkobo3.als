open main
pred idxpu2S2AbsNCfkobo3_prop8 {
  always all l: File.link | eventually l in Trash since l in File.link
}
pred __repair { idxpu2S2AbsNCfkobo3_prop8 }
check __repair { idxpu2S2AbsNCfkobo3_prop8 <=> prop8o }