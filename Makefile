all: clean modules install

modules:
	$(MAKE) -C src/ modules

clean:
	$(MAKE) -C src/ clean

install:
	$(MAKE) -C src/ install

