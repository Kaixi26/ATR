open main
pred idRbrSyFGr5kdsNGbEK_prop8 {
	always some f : File.link | eventually f in Trash
}
pred __repair { idRbrSyFGr5kdsNGbEK_prop8 }
check __repair { idRbrSyFGr5kdsNGbEK_prop8 <=> prop8o }