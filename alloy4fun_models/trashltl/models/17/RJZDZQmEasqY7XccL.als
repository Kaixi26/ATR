open main
pred idRJZDZQmEasqY7XccL_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idRJZDZQmEasqY7XccL_prop18 }
check __repair { idRJZDZQmEasqY7XccL_prop18 <=> prop18o }