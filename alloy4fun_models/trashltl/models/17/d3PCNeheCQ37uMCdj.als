open main
pred idd3PCNeheCQ37uMCdj_prop18 {
	always (all f:Protected | f in Protected releases f in Trash)
}
pred __repair { idd3PCNeheCQ37uMCdj_prop18 }
check __repair { idd3PCNeheCQ37uMCdj_prop18 <=> prop18o }