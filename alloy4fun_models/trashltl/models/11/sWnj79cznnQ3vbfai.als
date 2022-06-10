open main
pred idsWnj79cznnQ3vbfai_prop12 {
  always (all f:File | f in Trash  since eventually f in Trash )
}
pred __repair { idsWnj79cznnQ3vbfai_prop12 }
check __repair { idsWnj79cznnQ3vbfai_prop12 <=> prop12o }