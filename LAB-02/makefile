filename = full_adder
pcf_file = full_adder.pcf

build:
	yosys -p "synth_ice40 -json $(filename).json -blif $(filename).blif" $(filename).v

	nextpnr-ice40 --lp1k --package cm36 --json $(filename).json	--pcf $(pcf_file) --asc $(filename).asc --freq 48

	icepack $(filename).asc $(filename).bin

prog:
	sudo ./icesugar/tools/icesprog.x64.linux $(filename).bin
	
clean:
	rm -rf *.bin *.asc *.blif *.json