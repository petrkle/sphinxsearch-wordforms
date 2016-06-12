help:
	@echo "help   - napoveda"
	@echo "dump   - dump slovniku"
	@echo "clean  - smaze stazene a generovane soubory"

dump:
	./download.sh
	./unpack.sh
	./dump.sh
	./pack.sh

clean:
	rm -rf *.oxt en_us* dict-* wordforms-*
