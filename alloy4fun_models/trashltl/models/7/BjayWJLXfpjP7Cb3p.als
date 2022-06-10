open main
pred idBjayWJLXfpjP7Cb3p_prop8 {
  	always all f : File.link | eventually f in Trash
}
pred __repair { idBjayWJLXfpjP7Cb3p_prop8 }
check __repair { idBjayWJLXfpjP7Cb3p_prop8 <=> prop8o }