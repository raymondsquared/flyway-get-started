infrastructure__%:
	${MAKE} --directory infrastructure -f Makefile $*

database__%:
	${MAKE} --directory database -f Makefile $*
