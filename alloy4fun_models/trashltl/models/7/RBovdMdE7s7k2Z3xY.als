open main
pred idRBovdMdE7s7k2Z3xY_prop8 {
  always all l: File.link | eventually l in Trash
}
pred __repair { idRBovdMdE7s7k2Z3xY_prop8 }
check __repair { idRBovdMdE7s7k2Z3xY_prop8 <=> prop8o }