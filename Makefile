TARGET = archie-all.zip

all: archie-cup-holder archie-holder-2 archie-box
	@echo Done!

zip: clean all
	zip $(TARGET) dist/*.stl LICENSE

dist: 
	mkdir -p dist

archie-%: dist
	openscad -o dist/$@.stl $@.scad

clean:
	rm -f dist/*.stl $(TARGET)