open main
pred idg59yQxfy48FxcmEXE_prop5 {
	all f : File | always eventually f not in File
}
pred __repair { idg59yQxfy48FxcmEXE_prop5 }
check __repair { idg59yQxfy48FxcmEXE_prop5 <=> prop5o }