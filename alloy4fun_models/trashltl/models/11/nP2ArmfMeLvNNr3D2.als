open main
pred idnP2ArmfMeLvNNr3D2_prop12 {
  always (all f:File | eventually f in Trash implies always  some (f &Trash) )
}
pred __repair { idnP2ArmfMeLvNNr3D2_prop12 }
check __repair { idnP2ArmfMeLvNNr3D2_prop12 <=> prop12o }