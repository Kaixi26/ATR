open main
pred idRykvs47eaXFMRSoPr_prop4 {
    some f : File | eventually ((f not in Trash) and f in Trash')
}
pred __repair { idRykvs47eaXFMRSoPr_prop4 }
check __repair { idRykvs47eaXFMRSoPr_prop4 <=> prop4o }