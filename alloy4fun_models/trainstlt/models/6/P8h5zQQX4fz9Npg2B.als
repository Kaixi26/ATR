open main
pred idP8h5zQQX4fz9Npg2B_prop7 {
	
  	all t : Train | (eventually always no t.pos)
}
pred __repair { idP8h5zQQX4fz9Npg2B_prop7 }
check __repair { idP8h5zQQX4fz9Npg2B_prop7 <=> prop7o }