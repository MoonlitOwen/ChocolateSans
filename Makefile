help:
	@echo "###"
	@echo "# Build targets for Chocolate Sans"
	@echo "###"
	@echo
	@echo "  make build: Builds the fonts and places them in the fonts/ directory"
	@echo "  make test:  Tests the fonts with fontbakery"
	@echo "  make proof: Creates HTML proof documents in the proof/ directory"
	@echo

venv: venv/touchfile

build: venv
	. venv/bin/activate; gftools builder sources/project.yaml

venv/touchfile: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/touchfile

clean:
	rm -rf venv
	find -iname "*.ufo" -delete
	find -iname "*.pyc" -delete
