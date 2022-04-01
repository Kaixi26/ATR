open main
pred idvjxBrPcgLcJ8jisui_prop18 {
	always all p: Protected | p not in Protected since p in Trash
}
pred __repair { idvjxBrPcgLcJ8jisui_prop18 }
check __repair { idvjxBrPcgLcJ8jisui_prop18 <=> prop18o }