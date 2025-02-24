build: 
	dune build 

run: 
	dune exec swagadate

.setup-env: seput
	opam switch create swagadate 5.3.0;
	opam install ocaml-lsp-server odoc ocamlformat utop dune;

setup:
	opam switch swagadate;

clean:
	dune clean

start:
	dune fmt
	dune exec swagadate