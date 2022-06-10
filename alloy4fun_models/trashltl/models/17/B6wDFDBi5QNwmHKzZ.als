open main
pred idB6wDFDBi5QNwmHKzZ_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idB6wDFDBi5QNwmHKzZ_prop18 }
check __repair { idB6wDFDBi5QNwmHKzZ_prop18 <=> prop18o }