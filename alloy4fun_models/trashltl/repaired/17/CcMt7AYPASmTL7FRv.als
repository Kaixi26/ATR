open main
pred idCcMt7AYPASmTL7FRv_prop18 {
  always (all f : File | f in Protected triggered f in Trash)
}
pred __repair { idCcMt7AYPASmTL7FRv_prop18 }
check __repair { idCcMt7AYPASmTL7FRv_prop18 <=> prop18o }