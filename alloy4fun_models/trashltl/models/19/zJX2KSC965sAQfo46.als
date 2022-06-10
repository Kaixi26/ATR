open main
pred idzJX2KSC965sAQfo46_prop20 {
   all t: Trash | t in Trash since t not in Protected
}
pred __repair { idzJX2KSC965sAQfo46_prop20 }
check __repair { idzJX2KSC965sAQfo46_prop20 <=> prop20o }