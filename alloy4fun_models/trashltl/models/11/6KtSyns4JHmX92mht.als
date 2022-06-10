open main
pred id6KtSyns4JHmX92mht_prop12 {
  always (all f:File |some (f &Trash)  since eventually f in Trash    )
}
pred __repair { id6KtSyns4JHmX92mht_prop12 }
check __repair { id6KtSyns4JHmX92mht_prop12 <=> prop12o }