open main
pred idswc63YWFCeoJd5Ysc_prop18 {
	always all f: File | once f not in Protected releases f in Trash
}
pred __repair { idswc63YWFCeoJd5Ysc_prop18 }
check __repair { idswc63YWFCeoJd5Ysc_prop18 <=> prop18o }