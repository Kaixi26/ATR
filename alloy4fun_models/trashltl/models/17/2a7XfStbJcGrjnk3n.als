open main
pred id2a7XfStbJcGrjnk3n_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { id2a7XfStbJcGrjnk3n_prop18 }
check __repair { id2a7XfStbJcGrjnk3n_prop18 <=> prop18o }