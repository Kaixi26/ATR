open main
pred idBeZtp5eLGcpk8P6Wj_prop12 {
	always (some f: File | eventually f in Trash)
}
pred __repair { idBeZtp5eLGcpk8P6Wj_prop12 }
check __repair { idBeZtp5eLGcpk8P6Wj_prop12 <=> prop12o }