open main
pred idydYvhPt3wbi2Mifoe_prop20 {
	always all t: File | t not in Protected since t in Protected
}
pred __repair { idydYvhPt3wbi2Mifoe_prop20 }
check __repair { idydYvhPt3wbi2Mifoe_prop20 <=> prop20o }