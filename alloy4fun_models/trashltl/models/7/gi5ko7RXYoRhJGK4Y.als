open main
pred idgi5ko7RXYoRhJGK4Y_prop8 {
    always (some f : File | some f.link implies eventually f in Trash')
}
pred __repair { idgi5ko7RXYoRhJGK4Y_prop8 }
check __repair { idgi5ko7RXYoRhJGK4Y_prop8 <=> prop8o }