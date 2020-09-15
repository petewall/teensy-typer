SRC_FILES := $(shell find . -name "*.cpp" -o -name "*.h")

.pio/build/teensy31/firmware.hex: build
.PHONY: build
build: platformio.ini ${SRC_FILES}
	pio run

.PHONY: upload
upload: .pio/build/teensy31/firmware.hex
	teensy_loader_cli --mcu=mk20dx256 -w -v .pio/build/teensy31/firmware.hex

.PHONY: clean
clean:
	rm -rf .pio
