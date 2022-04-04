open main
pred id7RHmrouNQGBbuCe2z_prop17 {
	always (all f:Trash | after no Trash&f)
}
pred __repair { id7RHmrouNQGBbuCe2z_prop17 }
check __repair { id7RHmrouNQGBbuCe2z_prop17 <=> prop17o }