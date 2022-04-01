open main
pred idoJD9Fpq7aSsnBrxtZ_prop8 {
  	always all f: File | always (eventually f.link in Trash)

}
pred __repair { idoJD9Fpq7aSsnBrxtZ_prop8 }
check __repair { idoJD9Fpq7aSsnBrxtZ_prop8 <=> prop8o }