open main
pred id6NL926bZNuAYjac6Z_prop12 {
  always all f: File | f in Trash until f not in Trash
}
pred __repair { id6NL926bZNuAYjac6Z_prop12 }
check __repair { id6NL926bZNuAYjac6Z_prop12 <=> prop12o }