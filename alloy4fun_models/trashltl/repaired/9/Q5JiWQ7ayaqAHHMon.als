open main
pred idQ5JiWQ7ayaqAHHMon_prop10 {
  always all f: File | always (f in Protected implies always f in Protected)
}
pred __repair { idQ5JiWQ7ayaqAHHMon_prop10 }
check __repair { idQ5JiWQ7ayaqAHHMon_prop10 <=> prop10o }