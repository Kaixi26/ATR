open main
pred idnyWWQYe2NqRNa6j3D_prop12 {
  all f:File | once f in Trash implies always some (f &Trash) 
}
pred __repair { idnyWWQYe2NqRNa6j3D_prop12 }
check __repair { idnyWWQYe2NqRNa6j3D_prop12 <=> prop12o }