open main
pred id3NZdcvJZFax8MeSwC_prop5 {
	always all f : Trash | eventually f not in File
}
pred __repair { id3NZdcvJZFax8MeSwC_prop5 }
check __repair { id3NZdcvJZFax8MeSwC_prop5 <=> prop5o }