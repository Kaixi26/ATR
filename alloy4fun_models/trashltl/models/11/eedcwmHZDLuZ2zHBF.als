open main
pred ideedcwmHZDLuZ2zHBF_prop12 {
  always all t:Trash | t in Trash releases t not in Trash
}
pred __repair { ideedcwmHZDLuZ2zHBF_prop12 }
check __repair { ideedcwmHZDLuZ2zHBF_prop12 <=> prop12o }