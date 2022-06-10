open main
pred idMuScyhbX9yS65APnH_prop20 {
  always all f: File | f in Trash since f not in Protected
}
pred __repair { idMuScyhbX9yS65APnH_prop20 }
check __repair { idMuScyhbX9yS65APnH_prop20 <=> prop20o }