open main
pred idQF2KMMesZYfdc4Cfi_prop5 {
 	some f: File | eventually f in Trash and eventually always f not in File
}
pred __repair { idQF2KMMesZYfdc4Cfi_prop5 }
check __repair { idQF2KMMesZYfdc4Cfi_prop5 <=> prop5o }