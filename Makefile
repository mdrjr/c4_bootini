install:
	mkdir -p /usr/share/bootini
	install boot.ini /usr/share/bootini
	install config.ini /usr/share/bootini
	rm -fr /usr/bin/bootini
	install 10-odroid.rules /etc/udev/rules.d
#	install blacklist-spi.conf /etc/modprobe.d
	install -m 0664 odroid-tweaks.service /etc/systemd/system/
	install -m 0755 odroid-tweaks /bin
	