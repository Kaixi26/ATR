open main
pred idzNSABoDbJq7xo62vx_prop19 {
	all f : Protected | always (f not in Trash) until (f in Trash)
}
pred __repair { idzNSABoDbJq7xo62vx_prop19 }
check __repair { idzNSABoDbJq7xo62vx_prop19 <=> prop19o }