open main
pred idGo6YFYDc3mirRzWdc_prop8 {
  always all l : File.link | eventually l in File.link implies always l in Trash 
}
pred __repair { idGo6YFYDc3mirRzWdc_prop8 }
check __repair { idGo6YFYDc3mirRzWdc_prop8 <=> prop8o }