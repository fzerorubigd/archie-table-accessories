TARGET = archie-all.zip
FN = 100
all: archie-cup-holder archie-holder-2 archie-box archie-token-cards archie-reduced-cup-holder
	@echo Done!

zip: clean all
	zip $(TARGET) dist/*.stl LICENSE

dist: 
	mkdir -p dist

archie-%: dist
	openscad -o dist/$@.stl $@.scad

clean:
	rm -f dist/*.stl $(TARGET)