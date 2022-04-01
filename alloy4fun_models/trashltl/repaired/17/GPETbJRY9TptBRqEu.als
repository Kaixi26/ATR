open main
pred idGPETbJRY9TptBRqEu_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idGPETbJRY9TptBRqEu_prop18 }
check __repair { idGPETbJRY9TptBRqEu_prop18 <=> prop18o }