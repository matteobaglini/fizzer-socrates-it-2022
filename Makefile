.PHONY: run
run:
	cabal run fizzbuzz

.PHONY: test
test:
	cabal run fizzbuzz-test