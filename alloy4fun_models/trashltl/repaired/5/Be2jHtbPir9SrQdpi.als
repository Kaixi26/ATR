open main
pred idBe2jHtbPir9SrQdpi_prop6 {
	always (all f:File&Trash | f in Trash)
}
pred __repair { idBe2jHtbPir9SrQdpi_prop6 }
check __repair { idBe2jHtbPir9SrQdpi_prop6 <=> prop6o }