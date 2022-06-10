open main
pred idLt3BYRgeZeq7icPp9_prop18 {
	always all p : Protected | p in Protected until p in Trash
}
pred __repair { idLt3BYRgeZeq7icPp9_prop18 }
check __repair { idLt3BYRgeZeq7icPp9_prop18 <=> prop18o }