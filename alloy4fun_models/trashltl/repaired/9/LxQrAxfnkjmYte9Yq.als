open main
pred idLxQrAxfnkjmYte9Yq_prop10 {
    all f : File | once f in Protected implies f in Protected
}
pred __repair { idLxQrAxfnkjmYte9Yq_prop10 }
check __repair { idLxQrAxfnkjmYte9Yq_prop10 <=> prop10o }