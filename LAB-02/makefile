filename = full_adder_tb
pcf_file = full_adder.pcf

# ICELINK_DIR = $(shell df | grep iCELink | awk '{print $$6}')
ICELINK_DIR=/mnt/e
${warning iCELink path: $(ICELINK_DIR)}

build:
	yosys -p "synth_ice40 -json $(filename).json -blif $(filename).blif" $(filename).v

	nextpnr-ice40 --lp1k --package cm36 --json $(filename).json	--pcf $(pcf_file) --asc $(filename).asc --freq 48

	icepack $(filename).asc $(filename).bin

prog:
	@if [ -d '$(ICELINK_DIR)' ]; \
	then \
		sudo ./icesugar/tools/icesprog.x64.linux $(filename).bin \
	else \
		echo "iCELink not found"; \
		exit 1; \
	fi

clean:
	rm -rf *.bin *.asc *.blif *.json