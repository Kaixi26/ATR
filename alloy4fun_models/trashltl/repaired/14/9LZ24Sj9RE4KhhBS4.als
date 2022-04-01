open main
pred id9LZ24Sj9RE4KhhBS4_prop15 {
	all f:File-Trash | eventually f in Trash
}
pred __repair { id9LZ24Sj9RE4KhhBS4_prop15 }
check __repair { id9LZ24Sj9RE4KhhBS4_prop15 <=> prop15o }