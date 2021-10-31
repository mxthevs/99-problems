help:
	@echo "Available commands:"
	@echo "    make help  # prints this message"
	@echo "    make test  # test all solutions"
	@echo "    make clean # cleans cwd"

clean:
	rm -f ./**/*.cmi ./**/*.cmo ./**/*.o ./**/*.out

test:
	@FROM_MAKEFILE=1 ./.private/run-tests.sh
