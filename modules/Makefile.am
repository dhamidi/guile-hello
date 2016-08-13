guilesitedir=@datarootdir@/guile/site/@GUILE_EFFECTIVE_VERSION@
SOURCES=$(shell find . -name '*.scm')
COMPILED_SOURCES=$(SOURCES:%.scm=%.scm.go)

nobase_guilesite_DATA=$(SOURCES) $(COMPILED_SOURCES)

CLEANFILES=$(COMPILED_SOURCES)

SUFFIXES = .scm .scm.go
.scm.scm.go:
	$(GUILE_TOOLS) compile -o "$@" "$<"
