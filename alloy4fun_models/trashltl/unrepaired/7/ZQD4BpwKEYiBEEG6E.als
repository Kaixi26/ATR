open main
pred idZQD4BpwKEYiBEEG6E_prop8 {
   ( some f1,f2 : File | f1->f2 in link implies eventually f2 in Trash  )
  
}
pred __repair { idZQD4BpwKEYiBEEG6E_prop8 }
check __repair { idZQD4BpwKEYiBEEG6E_prop8 <=> prop8o }