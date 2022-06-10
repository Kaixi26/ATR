open main
pred id5nYh8Y9srk2RgaFFz_prop12 {
  always (all f:File | eventually f in Trash implies after some (f &Trash) )
}
pred __repair { id5nYh8Y9srk2RgaFFz_prop12 }
check __repair { id5nYh8Y9srk2RgaFFz_prop12 <=> prop12o }