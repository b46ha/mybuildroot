.PHONY: raspberrypi all raspberrypi_defconfig clean

all: raspberrypi

buildroot/.git:
	git submodule update --init

raspberrypi_defconfig: buildroot/.git
	mkdir -p ./build/raspberrypi/
	$(MAKE) -C ./buildroot O="$(PWD)/build/raspberrypi" BR2_EXTERNAL="$(PWD)/custom" raspberrypi_defconfig

raspberrypi: raspberrypi_defconfig
	$(MAKE) -C build/raspberrypi/

clean:
	$(MAKE) -C build/raspberrypi/ clean

