open main
pred idb4iqoufpFN6EDca53_prop12 {
  always (all f:File | after f in Trash implies  some (f &Trash) )
}
pred __repair { idb4iqoufpFN6EDca53_prop12 }
check __repair { idb4iqoufpFN6EDca53_prop12 <=> prop12o }