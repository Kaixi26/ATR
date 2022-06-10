open main
pred idd2D9YcMa9W3NHmjPM_prop5 {
	
  	eventually (some f: File | f not in Trash implies after f in Trash)
}
pred __repair { idd2D9YcMa9W3NHmjPM_prop5 }
check __repair { idd2D9YcMa9W3NHmjPM_prop5 <=> prop5o }