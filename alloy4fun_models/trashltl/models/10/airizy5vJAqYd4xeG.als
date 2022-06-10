open main
pred idairizy5vJAqYd4xeG_prop11 {
	some (File - Protected) implies ((File - Protected) in Protected')
}
pred __repair { idairizy5vJAqYd4xeG_prop11 }
check __repair { idairizy5vJAqYd4xeG_prop11 <=> prop11o }