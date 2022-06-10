open main
pred iddEMgCFNJdoc3R8LF6_prop8 {
    always all l: File.link | always eventually l in Trash
}
pred __repair { iddEMgCFNJdoc3R8LF6_prop8 }
check __repair { iddEMgCFNJdoc3R8LF6_prop8 <=> prop8o }