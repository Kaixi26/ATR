open main
pred idj2nHQPXT8LvfKn3QE_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idj2nHQPXT8LvfKn3QE_prop18 }
check __repair { idj2nHQPXT8LvfKn3QE_prop18 <=> prop18o }