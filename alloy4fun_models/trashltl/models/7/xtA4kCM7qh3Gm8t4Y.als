open main
pred idxtA4kCM7qh3Gm8t4Y_prop8 {
    always (some f : File | some f.link implies eventually f in Trash)
}
pred __repair { idxtA4kCM7qh3Gm8t4Y_prop8 }
check __repair { idxtA4kCM7qh3Gm8t4Y_prop8 <=> prop8o }