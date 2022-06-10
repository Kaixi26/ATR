open main
pred idibt6WP5ZxQ7wg4ugs_prop20 {
	always (all f : Trash | f in Protected since f in Trash)
}
pred __repair { idibt6WP5ZxQ7wg4ugs_prop20 }
check __repair { idibt6WP5ZxQ7wg4ugs_prop20 <=> prop20o }