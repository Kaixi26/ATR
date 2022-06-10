open main
pred idZgqLMPt9TdwtdEGMe_prop17 {
  all f: File |always ((eventually f in Trash) implies always File' = File - f)

}
pred __repair { idZgqLMPt9TdwtdEGMe_prop17 }
check __repair { idZgqLMPt9TdwtdEGMe_prop17 <=> prop17o }