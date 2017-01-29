PIQI_SRC := $(wildcard src/*.piqi)

statechart.proto: statechart.piqi
	@piqi to-proto -o $@ $<

statechart.piqi: $(PIQI_SRC)
	@(echo '.protobuf-package "statechart"' && cat $(PIQI_SRC)) > $@
