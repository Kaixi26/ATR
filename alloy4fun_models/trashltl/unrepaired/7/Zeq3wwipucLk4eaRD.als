open main
pred idZeq3wwipucLk4eaRD_prop8 {
    always (some f : File | some link.f implies eventually f in Trash)
}
pred __repair { idZeq3wwipucLk4eaRD_prop8 }
check __repair { idZeq3wwipucLk4eaRD_prop8 <=> prop8o }