open main
pred idShP6Decsv4wLnQuiS_prop8 {
	all l : File.link | eventually l in Trash
}
pred __repair { idShP6Decsv4wLnQuiS_prop8 }
check __repair { idShP6Decsv4wLnQuiS_prop8 <=> prop8o }