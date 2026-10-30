ZIPS = figs.zip problemas.zip

.PHONY: all zips clean

all: zips

zips:
	rm -f $(ZIPS)
	cd problemas/figs && zip -r ../../figs.zip .
	cd problemas && zip -r ../problemas.zip . -x "figs/*" "*.pdf" "*.aux" "*.log" "*.out" "*.fls" "*.fdb_latexmk" "*.synctex*"

clean:
	rm -f $(ZIPS)
