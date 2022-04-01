open main
pred idhuzh8jf7rP7hg7LND_prop12 {
	always some f : File | f not in Trash until (eventually f in Trash)
}
pred __repair { idhuzh8jf7rP7hg7LND_prop12 }
check __repair { idhuzh8jf7rP7hg7LND_prop12 <=> prop12o }