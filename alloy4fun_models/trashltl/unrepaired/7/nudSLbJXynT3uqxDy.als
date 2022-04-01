open main
pred idnudSLbJXynT3uqxDy_prop8 {
  	always all f: File.link | eventually f.link in Trash

}
pred __repair { idnudSLbJXynT3uqxDy_prop8 }
check __repair { idnudSLbJXynT3uqxDy_prop8 <=> prop8o }