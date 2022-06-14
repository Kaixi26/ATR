open main
pred idhGWvxxBgsTyXLGsiZ_prop7 {
	
  	all t : Train | (eventually always no t.pos)
}
pred __repair { idhGWvxxBgsTyXLGsiZ_prop7 }
check __repair { idhGWvxxBgsTyXLGsiZ_prop7 <=> prop7o }